import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, // source to 
                 AppRoutes.airthmaticRoute);// destination
              },
              child: const Text("Airthmatic"))
        ],
      ),
    );
  }
}
