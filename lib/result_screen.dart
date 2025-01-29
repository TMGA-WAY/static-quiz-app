import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_summary.dart';

class ResultScreen extends StatelessWidget {
  // todo

  const ResultScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'answer': questions[i].answers[0],
        'user_answer': choosenAnswer[i],
      });
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your answered x out y correctly'),
            SizedBox(
              height: 30,
            ),
            QuestionSummary(
              summaryData: getSummaryData(),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
