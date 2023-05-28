import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
  }) : super(key: key);

  final int result;
  final int questionLength;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result',
              style: TextStyle(color: neutral, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              child: Text(
                '$result/$questionLength',
                style: TextStyle(fontSize: 30),
              ),
              radius: 70,
              backgroundColor: result == questionLength / 2
                  ? Colors.yellow
                  : result < questionLength / 2
                      ? incorrect
                      : correct,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              result == questionLength / 2
                  ? 'Almost there'
                  : result < questionLength / 2
                      ? 'try again'
                      : 'Great!',
                      style: TextStyle(color:  neutral),
            ),
          ],
        ),
      ),
    );
  }
}
