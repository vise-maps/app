import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:visemaps/controllers/editor_controller.dart';
import 'package:visemaps/controllers/stream_notifier.dart';
import 'package:visemaps/firebase_options.dart';
import 'package:visemaps/pages/file_explorer.dart';
import 'package:visemaps/pages/login.dart';
import 'package:visemaps/controllers/auth.dart';
import 'url/native.dart' if (dart.library.html) 'url/web.dart';

void main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final authState = StreamNotifier(FirebaseAuth.instance.authStateChanges());
  final controller = EditorController();

  final paths = [
    'browse',
    'recents',
    'trash',
    'settings',
  ];

  final config = GoRouter(routes: [
    GoRoute(
      path: '/login', 
      builder: (context, state) => const Login()
    ),
    GoRoute(
      path: '/',
      redirect: (context, state) {
        if (authState.value == null) {
          return '/login';
        }
        return '/browse';
      },
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const Login(),
    ),
    ShellRoute(
        builder: (context, state, child) => Scaffold(
        body: Auth(
          notifier: authState,
          child: Row(
            children: [
              SideNavigationBar(
                footer: const SideNavigationBarFooter(
                  label: Text('© 2022 Tomáš Wróbel &\nMarco Nicolas Kormanik'),
                ),
                header: SideNavigationBarHeader(
                  image: CircleAvatar(
                    backgroundImage: NetworkImage(
                      authState.value?.photoURL 
                        ?? 'https://via.placeholder.com/150'
                    ),
                  ),
                  title: Text(authState.value?.displayName ?? 'Unnamed'),
                  subtitle: Text(authState.value?.email ?? '')
                ),
                selectedIndex: paths.indexOf(Uri.parse(state.location).pathSegments[0]),
                items: const [
                  SideNavigationBarItem(
                    icon: Icons.home, 
                    label: 'Home'
                  ),
                  SideNavigationBarItem(
                    icon: Icons.history, 
                    label: 'Recents'
                  ),
                  SideNavigationBarItem(
                    icon: Icons.delete, 
                    label: 'Trash'
                  ),
                  SideNavigationBarItem(
                    icon: Icons.settings, 
                    label: 'Settings'
                  )
                ],
                onTap: (index) {
                  context.go('/${paths[index]}');
                }
              ),
              Expanded(child: child)
            ]
          )
        )
      ),
      routes: [
        GoRoute(
          path: '/browse',
          redirect: (context, state) {
            if (authState.value == null) {
              return '/login';
            }
            return null;
          },
          builder: (context, state) => const FileExplorer(),
        ),
        GoRoute(
          path: '/edit/:id',
          redirect: (context, state) {
            final user = authState.value;
            if (user == null) {
              return '/login';
            }
            if (authState.value != null && controller.file == null) {
              final ref = FirebaseStorage.instance.ref(user.uid).child(
                state.params['id']!
              );

              controller.openReference(ref);
            }
            return null;
          },
        )
      ]
    )
  ]);
  runApp(
    MaterialApp.router(
      routerConfig: config,
      theme: ThemeData(
        primaryColor: const Color(0xFFEF5350)
      ),
    )
  );
}
