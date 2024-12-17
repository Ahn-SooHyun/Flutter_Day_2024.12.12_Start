import 'package:flutter/material.dart';

class Rowcolumn extends StatelessWidget {
  const Rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row Column'),), //윗 부분
        // body : widget이 한개밖에 못 들어 온다.
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  width: 500,
                  height: 500,
                  margin: EdgeInsets.all(10), //전방위
                  padding: EdgeInsets.fromLTRB(40, 10, 50, 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                )
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
          ],
        ),
      ),
    );
  }
}
