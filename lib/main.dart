/// Vise Maps - an application for visualizing maps.
/// Copyright (C) 2022  Tomáš Wróbel
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU Affero General Public License as published
/// by the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU Affero General Public License for more details.
///
/// You should have received a copy of the GNU Affero General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.
///
/// main.dart - a wrapper for the content.
import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fs/io.dart' if (dart.library.html) 'package:fs/html.dart';
import 'package:path_provider/path_provider.dart';
import 'package:visemaps/controllers/editor_controller.dart';
import 'package:visemaps/firebase_options.dart';
import 'package:visemaps/controllers/stream_notifier.dart';
import 'package:visemaps/pages/editor.dart';

import 'url/native.dart' if (dart.library.html) 'url/web.dart';
import 'package:flutter/cupertino.dart' hide PageController;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:visemaps/pages/file_explorer.dart';
import 'package:visemaps/pages/login.dart';
import 'package:visemaps/pages/signup.dart';
import 'package:visemaps/pages/welcome.dart';
import 'package:visemaps/widgets/panel.dart';

void main() async {
  	usePathUrlStrategy();
	try {
		Directory.current = (await getApplicationDocumentsDirectory()) as dynamic;
	} catch (e) {
		// Web platform
	}

	await Directory('').create();
	await Directory('local').create();
	await Directory('trash').create();

	await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

	runApp(ModularApp(module: MainModule(), child: const MainWidget()));
}

class MainModule extends Module {
	@override
	List<Bind> get binds => [
		Bind.singleton((i) => StreamNotifier(FirebaseAuth.instance.userChanges())),
		Bind.singleton((i) => EditorController()),
	];
	@override
	List<ModularRoute> get routes => [
		ChildRoute(
			'/sign-up/',
			child: (context, arguments) {
				if (MediaQuery.of(context).size.width >= 600) {
					return const SignUpDesktop();
				} else {
					return const SignUp();
				}
			},
			guards: [NoAuthGuard()]
		),
		ChildRoute(
			'/sign-up/password/',
			child: (context, arguments) {
				if (MediaQuery.of(context).size.width >= 600) {
					return const SignUpDesktop();
				} else {
					return const SignUpPasswords();
				}
			},
			guards: [NoAuthGuard()]
		),
		ChildRoute(
			'/welcome/', 
			child: (context, arguments) => const Welcome(), 
			guards: [NoAuthGuard()]
		),
		ChildRoute(
			'/login/',
			child: (context, arguments) => const Login(),
			guards: [NoAuthGuard()]
		),
		ChildRoute(
			'/cloud/**',
			guards: [AuthGuard()],
			child: (context, arguments) {
				if (arguments.params['w'].endsWith('.json')) {
					return const Navigation(child: Editor());
				}
				return const Navigation(child: CloudFileExplorer());
			}
		),
		WildcardRoute(
			child: (context, arguments) {
				switch (FileSystemEntity.typeSync(arguments.uri.pathSegments.join('/'))) {
					case FileSystemEntityType.directory:
						return const Navigation(child: LocalFileExplorer());
					case FileSystemEntityType.file:
						return const Navigation(child: Editor());
					case FileSystemEntityType.link:
					case FileSystemEntityType.notFound:
					default:
				    	return const Center(child: Text('File not found'));
				}
			}
		),
	];
}

class Navigation extends StatelessWidget {
  	const Navigation({Key? key, required this.child}) : super(key: key);

	final Widget child;

	@override
	Widget build(BuildContext context) {
		final MediaQueryData query = MediaQuery.of(context);
		return Flex(
			verticalDirection: VerticalDirection.up,
			direction: query.size.width >= 600 ? Axis.horizontal : Axis.vertical,
			children: [
				if (query.size.width >= 600) (
					const Panel()
				) else (
					CupertinoTabBar(
						items: const [
							BottomNavigationBarItem(
								icon: Icon(CupertinoIcons.home),
								label: 'Home',
							),
							BottomNavigationBarItem(
								icon: Icon(CupertinoIcons.trash_circle),
								label: 'Trash',
							),
							BottomNavigationBarItem(
								icon: Icon(CupertinoIcons.gear),
								label: 'Settings',
							),
							BottomNavigationBarItem(
								icon: Icon(CupertinoIcons.profile_circled),
								label: 'Account',
							)
						],
						currentIndex: getIndex(),
						onTap: (index) {
							if (index == 0) {
								Modular.to.navigate('/');
							} else if (index == 1) {
								Modular.to.navigate('/trash/');
							} else if (index == 2) {
								Modular.to.navigate('/settings/');
							} else if (index == 3) {
								Modular.to.navigate('/account/');
							}
						},
					)
				),
				Expanded(child: child)
			],
		);
	}

	static int getIndex() {
		final segments = Modular.args.uri.pathSegments;
		if (segments.isEmpty || segments[0] == 'local') {
			return 0;
		} else if (segments[0] == 'trash') {
			return 1;
		} else if (segments[0] == 'settings') {
			return 2;
		} else if (segments[0] == 'account') {
			return 3;
		} else {
			throw Exception('Unknown path: ${Modular.args.uri.path}');
		}
	}
}

class AuthGuard extends RouteGuard {
	AuthGuard() : super(redirectTo: '/welcome/');
  	@override
  	FutureOr<bool> canActivate(String path, ParallelRoute route) {
    	return Modular.get<StreamNotifier<User?>>().value != null;
  	}
}

class NoAuthGuard extends RouteGuard {
	NoAuthGuard() : super(redirectTo: '/');
  	@override
  	FutureOr<bool> canActivate(String path, ParallelRoute route) {
		return Modular.get<StreamNotifier<User?>>().value == null;
  	}
}

class MainWidget extends StatelessWidget {
	const MainWidget({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return CupertinoApp.router(
			routeInformationParser: Modular.routeInformationParser,
			routerDelegate: Modular.routerDelegate,
			theme: const CupertinoThemeData(
				brightness: Brightness.light,
				primaryColor: Color(0xFFEF5350),
			),
			debugShowCheckedModeBanner: false,
		);
	}
}