import 'package:flutter/material.dart';
import 'package:quiz_app/data/dataa.dart';
import 'package:quiz_app/question_summary.dart';

class Results extends StatelessWidget {
  Results({super.key, required this.Answerss, required this.bounceBack});
  List<String> Answerss;
  Function bounceBack;

  List<Map<String, Object>> getScore() {
    List<Map<String, Object>> score = [];
    for (int i = 0; i < Answerss.length; i++) {
      score.add({
        'question_index': i,
        'question': questions[i].ques,
        'correctAnswer': questions[i].ans[0],
        'userAnswer': Answerss[i]
      });
    }
    return score;
  }

  @override
  Widget build(context) {
    var score = getScore();
    var totalScore = score.length;
    var correctScore = score.where((data) {
      return data['userAnswer'] == data['correctAnswer'];
    }).length;
    return Container(
      margin: const EdgeInsets.all(90),
      child: SizedBox(
        width: double.infinity, //horizonatal center pe le aaya
        child: Expanded(
          child: Column(
            children: [
              Text("You got $correctScore out of $totalScore"),
              const SizedBox(height: 30),
              QuestionSummary(getScore()),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  bounceBack();
                },
                child: const Text('Restart Quiz'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
