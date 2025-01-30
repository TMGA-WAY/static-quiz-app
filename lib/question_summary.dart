import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                CircleAvatar(
                    radius: 20,
                    child:
                        Text(((data['question_index'] as int) + 1).toString())),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String? ?? ''),
                      SizedBox(
                        height: 5,
                      ),
                      Text(data['user_answer'] as String? ?? ''),
                      SizedBox(
                        height: 5,
                      ),
                      Text(data['correct_answer'] as String? ?? ''),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
