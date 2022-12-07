import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:visemaps/controllers/stream_notifier.dart';

class Auth extends InheritedNotifier<StreamNotifier<User?>> {
  const Auth({
    Key? key,
    required StreamNotifier<User?> notifier,
    required Widget child,
  }) : super(key: key, notifier: notifier, child: child);

  static User? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Auth>()!.notifier!.value;
  }
}