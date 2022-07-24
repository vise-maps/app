import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:visemaps/fs.dart';
import 'package:visemaps/pages/editor.dart';
import 'package:visemaps/pages/file_explorer.dart';
import 'package:visemaps/pages/login.dart';
import 'package:visemaps/pages/signup.dart';
import 'package:visemaps/pages/welcome.dart';
import 'package:visemaps/panel.dart';
import 'package:visemaps/url.dart';

class MainRoute extends PageRoute<String?> {
	MainRoute({RouteSettings? settings}): super(settings: settings, fullscreenDialog: false);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
		final bool desktop = MediaQuery.of(context).size.width >= 640;
		if (FirebaseAuth.instance.currentUser == null && settings.name == '/') {
			return const Welcome();
		} else if (settings.name == '/login/') {
			return Login();
		} else if (settings.name!.startsWith('/sign-up') && desktop) {
			return SignUpDesktop();
		} else if (settings.name == '/sign-up/') {
			return SignUp();
		} else if (settings.name == '/sign-up/password/') {
			return SignUpPasswords();
		} else if (desktop) {
			final path = settings.name!.substring(1);
			return Row(
				children: [
					Panel(path: path),
					Expanded(
						child: path.endsWith('/') || path == ''
              ? FileExplorer(path: path) 
              : Editor(path: path)
					)
				],
			);
		} else {
			final path = settings.name!.substring(1);
			return Column(
				children: [
					Expanded(
            child: path.endsWith('/') || path == ''
              ? FileExplorer(path: path) 
              : Editor(path: path)
          ),
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
								icon: Icon(CupertinoIcons.settings),
								label: 'Settings', 
							),
							BottomNavigationBarItem(
								icon: Icon(CupertinoIcons.person_circle),
								label: 'Account',
							)
						],
						currentIndex: getIndex(settings.name!),
						backgroundColor: const Color(0xFFFFFFFF),
						border: const Border.fromBorderSide(BorderSide.none),
						onTap: (index) {
							if (index == 0) {
								Navigator.of(context).pushNamed('/');
							} else if (index == 1) {
								Navigator.of(context).pushNamed('/trash/');
							} else if (index == 2) {
								Navigator.of(context).pushNamed('/settings/');
							} else if (index == 3) {
								Navigator.of(context).pushNamed('/account/');
							}
						},
					),
				],
			);
		}
}

	@override
	bool get maintainState => false;

  String? get title {
		switch (settings.name) {
			case '/':
				return FirebaseAuth.instance.currentUser == null ? 'Welcome' : 'Home';
			case '/login/':
				return 'Login';
			case '/sign-up/':
			case '/sign-up/passwords/':
				return 'Signup';
			case '/settings/':
				return 'Settings';
			case '/account/':
				return 'Account';
			case null:
				return 'Vise Maps';
			default:
				return settings.name!.split('/').last;
		}
	}

	int getIndex(String path) {
		switch (path) {
			case '/trash/': return 1;
			case '/settings/': return 2;
			case '/account/': return 3;
			default: return 0;
		}
	}
  
   @override
   Color? get barrierColor => const Color(0xFFFFFFFF);
  
   @override
   String? get barrierLabel => null;
  
   @override
   Duration get transitionDuration => Duration.zero;

   static MainRoute of(BuildContext context) => ModalRoute.of(context) as MainRoute;
}

void main() async {
  usePathUrlStrategy();
	await FileSystem.setup();
  runApp(
    WidgetsApp(
      color: const Color(0xFFEF5350),
      onGenerateRoute: (RouteSettings settings) {
        return MainRoute(settings: settings);
      },
      builder: (BuildContext context, Widget? child) {
        return CupertinoTheme(
          data: const CupertinoThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xFFEF5350),
            textTheme: CupertinoTextThemeData(
              textStyle: TextStyle(
                color: Color(0xFF000000),
                fontSize: 16,
                fontFamily: 'SF Pro Text',
                fontFamilyFallback: [
                  'SF Pro Text',
                  'Helvetica',
                  'Arial',
                  'sans-serif',
                ]
              ),
            ),
          ),
          child: child!,
        );
      },
      localizationsDelegates: const [
        DefaultCupertinoLocalizations.delegate, // Here !
        DefaultWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
    )
  );
}

