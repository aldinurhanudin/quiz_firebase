import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz/models/question_model.dart';

class DBconnect {
  final url = Uri.parse(
      'https://quiz-8ee28-default-rtdb.firebaseio.com/questions.json');
  Future<void> addQuestion(Question question) async {
    http.post(url,
        body: json.encode({
          'title': question.title,
          'options': question.options,
        }));
  }

  Future<void> fetchQuestions()async{
    http.get(url).then((response) {
      var data = json.decode(response.body);
      print(data);
    });
  }
}
