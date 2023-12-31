import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      title: 'Flutter_App',
      initialRoute: '/splashScreen',
      routes: AppRoutes.getApplicationRoute(),
    );
  }
}
