import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  // ignore: use_key_in_widget_constructors
  Result(this.resultScore, this.resetHandler);
// ignore: curly_braces_in_flow_control_structures
  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty lieable!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
            style: TextButton.styleFrom(primary: Colors.blue),
            onPressed: resetHandler,
            child: Text('Restart Quiz'))
      ],
    ));
  }
}
