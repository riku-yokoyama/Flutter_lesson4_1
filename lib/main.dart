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
      home: const MyHomePage(title: '連絡先'),
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
        body: PhoneListView());
  }
}

// 電話帳画面の本体のカスタムウィジェット（ListViewを返す)
class PhoneListView extends StatelessWidget {
  const PhoneListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.only(top: 10),
          child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              minLeadingWidth: 10,
              // 横の余白をゼロに
              leading: CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    size: 45,
                  )),
              title: Text('りく'),
              subtitle: Text('マイカード'),
              trailing: Icon(Icons.arrow_forward_ios)),
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text('山田 太郎'),
            subtitle: Text('070-1234-567'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text('鈴木一郎'),
            subtitle: Text('070-1234-567'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text('佐藤 花子'),
            subtitle: Text('070-1234-567'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text('桜井 和寿'),
            subtitle: Text('070-1234-567'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text('丹羽 長秀'),
            subtitle: Text('070-1234-567'),
            trailing: Icon(Icons.arrow_forward_ios))
      ],
    );
  }
}
