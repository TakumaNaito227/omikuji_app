import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String result;

  const ResultPage({Key? key, required this.result}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Color _backgroundColor = Colors.white;
  TextStyle _textStyle = const TextStyle(color: Colors.black, fontSize: 24);

  @override
  void initState() {
    super.initState();

    // 結果に応じて背景色とテキストスタイルを設定
    if (widget.result == '大吉') {
      _backgroundColor = Colors.red;
      _textStyle = const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );
    } else if (widget.result == '中吉' || widget.result == '小吉') {
      _backgroundColor = Colors.yellow;
      _textStyle = const TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );
    } else if (widget.result == '凶') {
      _backgroundColor = Colors.grey;
      _textStyle = const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('結果'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: RotatedBox(
            quarterTurns: 4,
            child: Text(
              widget.result,
              style: _textStyle,
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ),
    );
  }
}
