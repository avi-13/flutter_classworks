import 'dart:math';

import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class GameOutput extends StatefulWidget {
  const GameOutput({super.key});

  @override
  State<GameOutput> createState() => _GameOutputState();
}

class _GameOutputState extends State<GameOutput> {
  int randomNumber1 = 0;
  int randomNumber2 = 0;
  int score = 0;
  int clickCount = 0;

  void generateRandomNumbers() {
    final random = Random();
    randomNumber1 = random.nextInt(100);
    randomNumber2 = random.nextInt(100);

    setState(() {});
  }

  void compareNumbers(bool isGreater) {
    if ((randomNumber1 < randomNumber2 && !isGreater) ||
        (randomNumber1 > randomNumber2 && isGreater)) {
      score++;
    }

    clickCount++;

    if (clickCount < 100) {
      generateRandomNumbers();
    } else {
      // Display the score
      Navigator.pushNamed(
        context,
        AppRoutes.gameOver,
        arguments: score,
      );
    }
  }

  void resetGame() {
    clickCount = 0;
    score = 0;
    generateRandomNumbers();
  }

  @override
  void initState() {
    super.initState();
    generateRandomNumbers();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click the button with the Larger number!',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      compareNumbers(true);
                    },
                    child: Text('Number 1: $randomNumber1'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      compareNumbers(false);
                    },
                    child: Text('Number 2: $randomNumber2'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Score: $score / 100',
                style: const TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    resetGame();
                  },
                  child: (const Text("Reset")))
            ],
          ),
        ),
      ),
    );
  }
}
