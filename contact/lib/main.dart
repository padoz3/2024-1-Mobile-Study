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
      home: const MyHomePage(title: "Week2"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(width: 150, height: 150, color: Colors.red, margin: const EdgeInsets.fromLTRB(100, 200, 50, 50)),
                Container(width: 150, height: 150, color: Colors.blue, margin: const EdgeInsets.fromLTRB(0, 200, 50, 50),)
              ],
            ),
            Row(
              children: <Widget>[
                Container(width: 150, height: 150, color: Colors.yellow, margin: const EdgeInsets.fromLTRB(100, 0, 50, 50),),
                Container(width: 150, height: 150, color: Colors.green, margin: const EdgeInsets.fromLTRB(0, 0, 50, 50),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 새로축 가운데 정렬
              children: <Widget>[ // 컬럼에 들어갈 위젯들
                Text('파도'),
              ],
            )
          ],
        ),
      )


      );
  }
}
