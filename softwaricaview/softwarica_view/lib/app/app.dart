import 'package:flutter/material.dart';
import 'package:softwarica_view/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sofwarica',
      initialRoute: AppRoutes.dash,
      routes: AppRoutes.allRoutes(),
    );
  }
}
