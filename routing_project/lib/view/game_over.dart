import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  const GameOver({super.key});

  @override
  Widget build(BuildContext context) {
    int result = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Column(
        children: [
          const Text("Game Over"),
           Row(
            children: [
              Text("Your Score is : $result")
            ],
          ),
          ElevatedButton(onPressed: (){

          }, child: const Text("Play Again"))
        ],
      ),
    );
  }
}