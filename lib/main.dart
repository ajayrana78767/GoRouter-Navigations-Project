import 'package:flutter/material.dart';
import 'package:gorouter_navigation_project/project/routes/app_route_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MyAppRouter _appRouter = MyAppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.router.routeInformationParser,
      routerDelegate: _appRouter.router.routerDelegate,
      routeInformationProvider: _appRouter.router.routeInformationProvider,
    );
  }
}
