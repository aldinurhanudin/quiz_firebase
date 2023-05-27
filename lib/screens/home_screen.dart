import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/widgets/question_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Question> _questions = [
      Question(
        id: '10',
        title: 'Apa manfaat sayur bayam',
        options: {
          'enak': false,
          'gakenak': false,
          'protein': true,
          'yuks': false
        },
      ),
      Question(
        id: '11',
        title: 'Apa manfaat sayur kangkung',
        options: {
          'enak': false,
          'gakenak': false,
          'protein': true,
          'yuks': false
        },
      )
    ];

    int index = 0;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text('Quiz App'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            QuestionWidget(
              question: _questions[index].title,
              indexAction: index,
              totalQuestions: _questions.length,
            ),
            Divider(
              color: neutral,
            ),
          ],
        ),
      ),
    );
  }
}
