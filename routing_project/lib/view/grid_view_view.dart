import 'package:flutter/material.dart';

class GridViewView extends StatefulWidget {
  const GridViewView({super.key});

  @override
  State<GridViewView> createState() => _GridViewViewState();
}

class _GridViewViewState extends State<GridViewView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 3,
          childAspectRatio: 0.76,
          children: [
            // ... triple dot spread operator
            for (int i = 1; i <= 10; i++) ...{
              Container(
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "$i",
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            }
          ],
        ),
      ),
    );
  }
}
