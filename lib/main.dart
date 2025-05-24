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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // パスワード入力欄
          SizedBox(
            width: 230,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.key_rounded,
                  size: 20,
                ),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // E-mail入力欄
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 230,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    size: 20,
                  ),
                  hintText: "E-mail",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),

          // ログインボタン
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              width: 230,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                                "ログイン成功",
                                style: TextStyle(
                                  fontSize: 18
                                ),
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent[100]),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
            ),
          )
        ],
      )),
    );
  }
}
