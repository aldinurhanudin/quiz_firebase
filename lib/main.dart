import 'package:flutter/material.dart';
import 'package:quiz/models/db_connect.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/screens/home_screen.dart';

void main(List<String> args) {
  var db = DBconnect();
  // db.addQuestion(Question(id: '20', title: 'What is  20 x 100 ?', options: {
  //   '100': false,
  //   '200': true,
  //   '300': false,
  //   '500': false,
  // }));
  db.fetchQuestions();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
