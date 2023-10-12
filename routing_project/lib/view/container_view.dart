import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.centerRight,
          child: const Text("Hello World"),
        ),
      ),
      // child: Center(
      //   child: Container(
      //     width: 200,
      //     height: 200,
      //     alignment: Alignment.center,
      //      decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       border: Border.all(
      //         color: Colors.black,
      //         width: 2,
      //       ),
      //       color: Colors.amberAccent,
      //     ),
      //     child: const Text("I am a container"),
      //   ),
    );
  }
}
