import 'package:flutter/material.dart';

class Result extends StatelessWidget 
{
  final int resultScore;
  final VoidCallback resetHandler;


  Result(this.resultScore, this.resetHandler);

  String get resultPhrase
   {
    String resultText;
    if (resultScore == 50)
    {
      resultText = 'Excellent!';
    } 
    else if (resultScore == 40)
    {
      resultText = 'Very Good!';
    } 
    else if (resultScore == 30) 
    {
      resultText = 'Good!';
    }
     else if (resultScore == 20) 
    {
      resultText = 'Can do better!';
    } 
    else if (resultScore == 10) 
    {
      resultText = 'Need to Imporve!';
    } 
    else {
      resultText = 'Very Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child:  Column(children: [
          Text(resultPhrase,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
        FlatButton(
          child: Text(
            'Reset Quiz',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
         )
      ])
    );
  }
}
