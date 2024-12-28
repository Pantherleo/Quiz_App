import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/button.dart';
import 'package:quiz_app/data/dataa.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question(this.onSelected, {super.key});

  final void Function(String) onSelected;

  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  var currentQuestion = 0;
  void answerQues(String ans) {
    setState(
      () {
        widget.onSelected(ans);
        currentQuestion++;
      },
    );
  }

  @override
  Widget build(context) {
    var currentq = questions[currentQuestion];
    return Container(
      margin: const EdgeInsets.all(90),
      child: SizedBox(
        width: double.infinity, //horizonatal center pe le aaya
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //vertical center pe le ayya

          children: [
            Text(
              currentq.ques,
              style: GoogleFonts.italiana(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 195, 114, 20)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ...currentq.getShuffled().map((ans) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnswerButton(ans, () {
                      answerQues(ans);
                    }) /* this practicallt the best way to use mutilple buttons in a single go by using mapping*/,
                  ],
                ),
              );
              /*converting a list into a map and then returning the mapped widget into the given object
                  basically what we have done is that we are calling the object mem func which is actually using the member variables.*/
            })
          ],
        ),
      ),
    );
  }
}
/* notes
Widget build(context) {
    var currentq = questions[0];
 return SizedBox(
      width: double.infinity, //horizonatal center pe le aaya
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //vertical center pe le ayya
        children: [
          Text(currentq.ques),
          const SizedBox(height: 10),
          AnswerButton(currentq.ans[0], () {}),
          const SizedBox(height: 10),
          AnswerButton(currentq.ans[1], () {}),
          const SizedBox(height: 10),
          AnswerButton(currentq.ans[2], () {}),
          const SizedBox(height: 10),
          AnswerButton(currentq.ans[3], () {}),
        ],
      ),
    );
    }
    */