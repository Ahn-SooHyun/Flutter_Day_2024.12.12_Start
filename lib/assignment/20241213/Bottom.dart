import 'package:flutter/material.dart'; //무조건 필요

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //     home: Text('Home')
    // );
    return new Scaffold(
      appBar: AppBar(title: Text('머리 부분'),),
      body: Text('body 부분'),
      bottomNavigationBar: Container(
        color: Colors.grey,
        padding: EdgeInsets.fromLTRB(200, 20, 200, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.star),
            Icon(Icons.account_tree),
            Icon(Icons.accessibility),
          ],
        )
      ),
    );
  }
}
