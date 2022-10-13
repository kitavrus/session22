import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:season22/ssn1022_smart_home/ui/smart_home_start_page.dart';

class SmartHomeApp extends StatelessWidget {
  SmartHomeApp({Key? key}) : super(key: key);

  final _router = GoRouter(initialLocation: "/", routes: [
    GoRoute(path: "/", builder: (context, index) => SmartHomeStartPage())
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
