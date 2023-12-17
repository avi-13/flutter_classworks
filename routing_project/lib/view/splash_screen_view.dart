import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, AppRoutes.dashboardRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Splash Screen"),
            SizedBox(height: 10),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
