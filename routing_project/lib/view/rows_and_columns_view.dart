import 'package:flutter/material.dart';

class RowsAndColumnView extends StatelessWidget {
  const RowsAndColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Rows And Column"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.blue,
                    child: const Text("Container 1"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.redAccent,
                    child: const Text("Container 2"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.blue,
                    child: const Text("Container 3"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    color: Colors.blueAccent,
                    height: 200,
                    alignment: Alignment.center,
                    child: const Text("Container 1"),
                  ),
                  Container(
                    color: Colors.lightBlueAccent,
                    height: 200,
                    alignment: Alignment.center,
                    child: const Text("Container 2"),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      color: Colors.blueAccent,
                      height: 200,
                      alignment: Alignment.center,
                      child: const Text("Container 3"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
