import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback reset;

  Result(this.result, this.reset);

  String get myresult {
    String z = "Your Score is = " + result.toString() + "/270";
    return z;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          myresult,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          child: Text('Restart Quiz'),
          onPressed: reset,
        )
      ]),
    );
  }
}
