import 'package:flutter/material.dart';

class ExpandedFlexibleView extends StatelessWidget {
  const ExpandedFlexibleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Hello World"),
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Hello World"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Hello World"),
                          duration: Duration(seconds: 3),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: Container(
                      // height: MediaQuery.of(context).size.height * .5,
                      // height: 200,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              // Flexible(  // overflow hunna aru add garyo vaney aafai milera basxa
              // fit: FlexFit.tight, // occupy all the available spaces
              child: Container(
                color: Colors.blueAccent,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
