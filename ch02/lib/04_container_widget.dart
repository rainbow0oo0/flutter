import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: '03.Container Widget 실습'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Text('100 x 100'),
          ),

          Container(
            width: 200,
            height: 200,
            // color: Colors.purple, //decoration 속성을 선언하면 color 속성과 충돌나서 에러
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text('purple'),
            decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(width: 2, color: Colors.pink)
            ),
          ),

          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.orange),
              shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('images/flower1.jpg'),
                    fit: BoxFit.cover
              )
            ),
          ),
          
        ],    
      ),
    );
  }
}
