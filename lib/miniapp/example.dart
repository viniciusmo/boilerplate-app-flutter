import 'package:flutter/material.dart';
import 'package:miniapps/miniapp.dart';

class ExampleMiniApp implements MiniApp {
  @override
  String get name => 'Example MiniApp';

  @override
  Map<String, WidgetBuilder> get routes => {
    '/example/home': (context) => ExampleHomePage(),
    '/example/details': (context) => ExampleDetailsPage(),
  };

  @override
  Future<void> initialize() async {
    print('$name initializing...');
  }
}

class ExampleDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Details Page'),
      ),
      body: Center(
        child: Text('Details of the Example MiniApp'),
      ),
    );
  }
}

class ExampleHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/example/details');
          },
          child: Text('Go to Details'),
        ),
      ),
    );
  }
}