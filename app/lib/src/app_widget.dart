import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/');
    return MaterialApp.router(
      title: 'Micro Apps',
      theme: MyTheme.lightTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
