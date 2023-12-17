import 'package:flutter/material.dart';
import 'package:softwarica_view/routes/app_routes.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 300, 8, 0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.createTeacher);
                  },
                  child: const Text(
                    "Softwarica College",
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
