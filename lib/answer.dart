import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  final String answer;
  Answer(this.selecthandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        color: Color.fromRGBO(255, 120, 105, 1),
        textColor: Colors.white,
        child: Text(
          answer,
        ),
        onPressed: selecthandler,
      ),
    );
  }
}
