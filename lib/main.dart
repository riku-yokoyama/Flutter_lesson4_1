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
      home: const MyHomePage(title: 'Flutter Lesson'),
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
            // ListTileはListViewの子要素
            // タイトルやアイコンを持ち、TODOアプリなどを作成できる
            ListTile(
              leading: Icon(Icons.map),
              title: Text("地図"),
              subtitle: Text("地図のサブタイトルです"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // ここに押したときの処理を書く(匿名関数)
              },
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text("アルバム"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // ここに押したときの処理を書く(匿名関数)
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("電話"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // ここに押したときの処理を書く(匿名関数)
              },
            ),
          ],
        ));
  }
}
