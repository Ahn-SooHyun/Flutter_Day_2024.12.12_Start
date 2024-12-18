import 'package:flutter/material.dart';

class Con3 extends StatefulWidget {
  const Con3({super.key});

  @override
  State<Con3> createState() => _Con3State();
}

class _Con3State extends State<Con3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffc2cd),
        body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //위
                  _Top(),

                  //아래
                  _Img()
                ],
              ),
            )
        ),
      ),
    );
  }
}

class _Img extends StatelessWidget {
  const _Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('/img/200w.gif',
        height: MediaQuery.of(context).size.height / 1.5,),
    );
  }
}

class _Top extends StatefulWidget {
  const _Top({super.key});

  @override
  State<_Top> createState() => _TopState();
}

class _TopState extends State<_Top> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('U&I', style: TextStyle(
              fontFamily: 'parisienne',
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),),
          Text('우리가 처음 만난 날',
            style: TextStyle(
                fontFamily: 'sunflower',
                fontSize: 26,
                fontWeight: FontWeight.bold
            ),),
          Text('2024.12.13'),
          SizedBox(height: 16,),
          IconButton(onPressed: () {
            setState(() {
              count++;
            });
          }, icon: Icon(Icons.favorite, color: Colors.red,)),
          SizedBox(height: 16,),
          Text('D+${count}')
        ],
      ),
    );
  }
}
