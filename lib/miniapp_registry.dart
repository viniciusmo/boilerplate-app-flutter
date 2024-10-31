import 'package:boilerplate_app_flutter/miniapp/example.dart';
import 'package:flutter/material.dart';
import 'package:miniapps/miniapp.dart';

class MiniAppRegistry {
  static final List<MiniApp> _miniApps = [];

  static void _registerDefaultMiniApps() {
    if (_miniApps.isEmpty) {
      _miniApps.addAll([ExampleMiniApp()]);
    }
  }

  static Future<void> initializeRegisteredMiniApps() async {
    _registerDefaultMiniApps();
    for (final miniApp in _miniApps) {
      await miniApp.initialize();
    }
  }

  static Map<String, WidgetBuilder> get combinedMiniAppRoutes {
    return {
      for (final app in _miniApps) ...app.routes,
    };
  }
}
