import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:visemaps/controllers/editor_controller.dart';
import 'package:visemaps/controllers/stream_notifier.dart';
import 'package:visemaps/firebase_options.dart';
import 'package:visemaps/pages/editor.dart';
import 'package:visemaps/pages/file_explorer.dart';
import 'package:visemaps/pages/login.dart';
import 'package:visemaps/controllers/auth.dart';
import 'package:visemaps/pages/signup.dart';
import 'package:visemaps/pages/welcome.dart';
import 'package:visemaps/painters/logo.dart';
import 'package:visemaps/utils/navigation.dart';
import 'url/native.dart' if (dart.library.html) 'url/web.dart';

void main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final authState = StreamNotifier(FirebaseAuth.instance.authStateChanges());
  final editor = EditorController();

  final config = GoRouter(
    refreshListenable: authState, 
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          if (authState.value == null) {
            return '/welcome';
          }
          return '/browse';
        },
      ),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const Scaffold(body: Welcome()),
        redirect: (context, state) => authState.value == null ? null : '/browse',
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const Scaffold(body: Login()),
        redirect: (context, state) => authState.value == null ? null : '/browse',
      ),
      GoRoute(
        path: '/sign-up',
        builder: (context, state) => const Scaffold(body: SignUp()),
        routes: [
          GoRoute(
            path: 'password',
            builder: (context, state) => SignUpPasswords(
              email: state.queryParams['email']!,
              name: state.queryParams['name']!,
            ),
          ),
        ],
        redirect: (context, state) => authState.value == null ? null : '/browse',
      ),
      ShellRoute(
          builder: (context, state, child) => Auth(
            notifier: authState,
            child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return child;
              } else {
                return Material(child: Row(
                  children: [
                    SideNavigationBar(
                      theme: SideNavigationBarTheme(
                        itemTheme: SideNavigationBarItemTheme(
                          labelTextStyle: const TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w100
                          ),
                          iconSize: 24,
                          selectedItemColor: Theme.of(context).primaryColor
                        ),
                        dividerTheme: SideNavigationBarDividerTheme.standard(),
                        togglerTheme: SideNavigationBarTogglerTheme.standard(),
                      ),
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
                      selectedIndex: getActive(context),
                      items: const [
                        SideNavigationBarItem(
                          icon: Icons.home, 
                          label: 'Home'
                        ),
                        SideNavigationBarItem(
                          icon: Icons.delete, 
                          label: 'Trash'
                        ),
                        SideNavigationBarItem(
                          icon: Icons.info, 
                          label: 'About'
                        ),
                        SideNavigationBarItem(
                          icon: Icons.settings, 
                          label: 'Settings'
                        )
                      ],
                      onTap: (index) => onTap(context, index)
                    ),
                    Expanded(child: child)
                  ]
                ));
              }
            }
          )
        ),
        routes: [
          GoRoute(
            path: '/browse',
            name: 'File Explorer',
            redirect: (context, state) {
              if (authState.value == null) {
                return '/welcome';
              }
              return null;
            },
            builder: (context, state) => FileExplorer(
              editor: editor,
            ),
          ),
          GoRoute(
            path: '/edit/:id',
            name: 'Editor',
            redirect: (context, state) {
              final user = authState.value;
              if (user == null) {
                return '/welcome';
              }
              return null;
            },
            builder: (context, state) => Editor(
              controller: editor,
            ),
          ),
          GoRoute(
            path: '/about', 
            name: 'About', 
            builder: (context, state) => LicensePage(
              applicationIcon: CustomPaint(
                painter: ViseMapsLogoPainter(),
                child: const SizedBox.square(dimension: 100)
              ),
            )
          ),
        ]
      )
    ]
  );
  runApp(
    MaterialApp.router(
      routerConfig: config,
      theme: ThemeData(
        primaryColor: const Color(0xFFEF5350),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.5,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w200
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFEF5350),
          foregroundColor: Colors.white,
        )
      ),
      title: 'Vise Maps',
    )
  );
}
