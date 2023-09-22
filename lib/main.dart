import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> fortunes = ['大吉', '中吉', '小吉', '凶'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset('images/hakoneshurine2778x1284.jpg'),
          ),
          Positioned(
            bottom: 160, // 画像の上部に配置
            left: 0,
            right: 0,
            child: Container(
              height: 50, // 上部の高さを指定
              child: GestureDetector(
                onTap: () {
                  var random = math.Random().nextInt(fortunes.length);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(result: fortunes[random])),
                  );
                },
                child: const Center(
                  child: Text(
                    '今日の運勢を占う',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
