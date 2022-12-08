import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget? bottomBar(BuildContext context) => MediaQuery.of(context).orientation != Orientation.portrait 
  ? null
  : BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: 'Recents'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.delete),
        label: 'Trash' 
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings'
      )
    ],
    currentIndex: getActive(context),
    onTap: (value) => onTap(context, value),
  )
;

final _paths = [
  'browse',
  'recents',
  'trash',
  'settings',
];

void onTap(BuildContext context, int index) {
  context.go('/${_paths[index]}');
}

int getActive(BuildContext context) {
  final path = GoRouter.of(context!).location;
  return _paths.indexOf(Uri.parse(path).pathSegments[0]);
} 