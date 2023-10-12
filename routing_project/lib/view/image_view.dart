import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/img1.jpg"),
              ),
              // Image.asset('assets/images/patan.png'),
              // const SizedBox(
              //   height: 50,
              // ),
              // Image.asset('assets/images/img1.jpg'),
              // const SizedBox(
              //   height: 50,
              // ),
              // Image.asset('assets/images/img2.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
