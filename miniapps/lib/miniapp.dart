import 'package:flutter/material.dart';

abstract class MiniApp {
  String get name;

  Map<String, WidgetBuilder> get routes;

  Future<void> initialize();
}
