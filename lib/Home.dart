import 'package:flutter/material.dart'; //무조건 필요

class Home extends StatelessWidget {
  const Home({super.key});

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
            ElevatedButton(onPressed: () {
              print('Hi');
              Navigator.pushNamed(context, '/def');
            }, child: Text('기본 Widget')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/rowColumn');
            }, child: Text('Row Column 사용')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/stairs');
            }, child: Text('Stairs')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/bottom');
            }, child: Text('Bottom')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/boxCon');
            }, child: Text('BoxCon')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/con2');
            }, child: Text('Con2')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/counter');
            }, child: Text('좋아요 / 싫어요')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/con3');
            }, child: Text('Con3')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/parentChild');
            }, child: Text('ParentChild')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/formW');
            }, child: Text('FormW')),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/formW2');
            }, child: Text('FormW2')),
          ],
        ),
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    );
  }
}
