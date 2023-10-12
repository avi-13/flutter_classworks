import 'package:flutter/material.dart';
import 'package:routing_project/app/snackbar/snackbar.dart';

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
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(
                  //     content: Text("Container 1 pressed"),
                  //     duration: Duration(seconds: 3),
                  //   ),
                  // );
                  showMySnackBar(message: "Container 1 Pressed", context: context, color: Colors.black);
                },
                
                  child: Container(
                    // height: MediaQuery.of(context).size.height * .5,
                    // height: 200,
                    color: Colors.amber,
                  ),
                ),
              ),  
            Expanded(
              flex: 2,
              // Flexible(  // overflow hunna aru add garyo vaney aafai milera basxa
              // fit: FlexFit.tight, // occupy all the available spaces
              child: GestureDetector(
                onTap: () {
                  showMySnackBar(message: "Container 2 Pressed", context: context,color: Colors.brown);
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(
                  //     backgroundColor: Colors.brown,
                  //     content: Text("Container 3 pressed"),
                  //     duration: Duration(seconds: 3),
                  //     behavior: SnackBarBehavior.floating,
                  //   ),
                  // );
                },
                child: Container(
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(
                  onTap: () {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(
                    //     content: Text("Container 2 pressed"),
                    //     duration: Duration(seconds: 3),
                    //   ),
                    // );
                    showMySnackBar(message: "Container 3 Pressed", context: context,color: Colors.pinkAccent);
                  },
                child: Container(
                  color: Colors.greenAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
