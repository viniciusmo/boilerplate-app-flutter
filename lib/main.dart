import 'package:boilerplate_app_flutter/miniapp_registry.dart';
import 'package:flutter/material.dart';
import 'package:miniapps/miniapp_navigator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MiniAppRegistry.initializeRegisteredMiniApps();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiniApp Framework',
      navigatorKey: MiniAppNavigator.navigatorKey,
      routes: MiniAppRegistry.combinedMiniAppRoutes,
      home: Scaffold(
        appBar: AppBar(title: const Text('Bem-vindo aos MiniApps')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              MiniAppNavigator.pushNamed('/example/home');
            },
            child: const Text('Ir para o Example MiniApp'),
          ),
        ),
      ),
    );
  }
}
