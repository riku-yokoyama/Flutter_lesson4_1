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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        // SingleChildScrollViewよりもパフォーマンスが良いので、大量データを扱う際はListView
        // RowやColumnを使わなくても、直接Childrenをかける
        body: ListView(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
            ),
            Container(
              color: Colors.yellow,
              height: 200,
            ),
            Container(
              color: Colors.red,
              height: 200,
            ),
            Container(
              color: Colors.pink,
              height: 200,
            ),
            Container(
              color: Colors.purpleAccent,
              height: 200,
            ),
            Container(
              color: Colors.lightGreen,
              height: 200,
            ),
          ],
        ));
  }
}
