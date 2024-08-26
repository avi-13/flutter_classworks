import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // add this line
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Center(
              child: Image.asset('assets/images/vector.png'),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              children: <Widget>[
                const Text(
                  'Donated',
                  style: TextStyle(fontSize: 25),
                ),
                const Text('Your blood can bring smile in other person face'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.all(4.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == 0 ? Colors.blue : Colors.grey,
                      ),
                    );
                  }),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Let's Begin",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip Step",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
