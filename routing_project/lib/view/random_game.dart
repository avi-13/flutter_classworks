import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class RandomGame extends StatelessWidget {
  const RandomGame({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.outputGame,
                    );
                  },
                  child: (const Text("Start Game")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
