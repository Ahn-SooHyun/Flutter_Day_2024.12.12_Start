import 'package:flutter/material.dart'; //무조건 필요

class Def extends StatelessWidget {
  const Def({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //     home: Text('Home')
    // );
    return new Scaffold(
      appBar: AppBar(title: Text('머리 부분'),),
      body: Container(
        child: Column(
          children: [
            Text('Hello World'),
            Text('Flutter'),
            Icon(Icons.local_convenience_store_rounded),
            Image.asset('/img/backFrontEnd.png'),
          ],
        ),
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    );
  }
}
