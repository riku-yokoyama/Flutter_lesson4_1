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
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text(widget.title),
        ),
        body: Row(
          // Rowは横方向なのでMainは横方向の位置、Crossは縦方向の位置を表す
          mainAxisAlignment: MainAxisAlignment.center,
          // crossが表現する位置は、画面全体での位置ではなく、Column内での位置
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.yellow,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            )
          ],
        )
    );
  }
}
