import 'package:flutter/material.dart';

class ExpandedFlexibleView extends StatelessWidget {
  const ExpandedFlexibleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * .5,
              height: 200,
              color: Colors.amber,
            ),
            Flexible(  // overflow hunna aru add garyo vaney aafai milera basxa 
              fit: FlexFit.tight, // occupy all the available spaces
              child: Container(
                height: 500,
                color: Colors.blueAccent,
            
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}