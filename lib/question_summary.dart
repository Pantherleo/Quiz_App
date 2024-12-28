import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget 
{
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) 
  {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(((data['question_index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['correctAnswer'] as String),
                        Text(data['userAnswer'] as String),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

/*
if we only have just a return statement then we can just use this syntax
"=>"  // see documentation for more details
 */