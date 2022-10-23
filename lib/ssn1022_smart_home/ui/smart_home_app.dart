import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:season22/ssn1022_smart_home/ui/smart_home_start_page.dart';
import 'package:season22/ssn1022_smart_home/ui/smart_lighting_page.dart';

class SmartHomeApp extends StatelessWidget {
  SmartHomeApp({Key? key}) : super(key: key);

  final _router = GoRouter(initialLocation: "/", routes: [
    GoRoute(path: "/", builder: (context, index) => const SmartHomeStartPage()),
    GoRoute(
        path: "/light", builder: (context, index) => const SmartLightingPage()),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.light(
          // useMaterial3: true,
          ),
    );
  }
}
