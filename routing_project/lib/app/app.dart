import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutte_App',
      initialRoute: AppRoutes.dashboardRoute,
      routes: AppRoutes.getApplicationRoute(),
    );
  }
}