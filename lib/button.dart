import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.Answer, this.onPressed, {super.key});
  final String Answer;
  final void Function() onPressed;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        foregroundColor: Colors.blue,
        backgroundColor: const Color.fromARGB(255, 37, 38, 38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(Answer,
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center),
    );
  }
}
