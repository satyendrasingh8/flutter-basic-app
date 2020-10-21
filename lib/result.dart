import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPharse {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are ... stranger';
    } else
      resultText = 'You are bad!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Text(
              resultPharse,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(onPressed: resetHandler, child: Text('Restart Quiz!',style: TextStyle(fontSize:20),),textColor:Colors.blue ,)
          ],
        ),
      ),
    );
  }
}
