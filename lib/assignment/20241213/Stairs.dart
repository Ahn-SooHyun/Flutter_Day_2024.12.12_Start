import 'package:flutter/material.dart';

class Stairs extends StatelessWidget {
  const Stairs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            Row(
              children: [
                Icon(Icons.star),
              ],
            ),
          ]
        ),
      )
    );
  }
}
