import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, // source to
                    AppRoutes.airthmaticRoute); // destination
              },
              child: const Text("Airthmatic"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.hello,
                );
              },
              child: const Text("HelloWorld"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.imgg,
                );
              },
              child: const Text("Images"),
            ),
          ],
        ),
      ),
    );
  }
}
