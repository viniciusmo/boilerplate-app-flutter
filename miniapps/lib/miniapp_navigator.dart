import 'package:flutter/material.dart';

class MiniAppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static void pushNamed(String routeName) {
    navigatorKey.currentState?.pushNamed(routeName);
  }
}
