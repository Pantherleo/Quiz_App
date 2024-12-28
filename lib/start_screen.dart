import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.switchh, {super.key});
  void Function() switchh;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('start it is '),
        const SizedBox(height: 100),
        Image.asset('assets/images/quizlo.png',
            width: 250, color: const Color.fromARGB(97, 229, 81, 172)),
        const SizedBox(height: 70),
        const Text(
          'Learn Flutter the fun  way ',
          style: TextStyle(
            color: Color.fromARGB(255, 42, 45, 182),
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: () {
            switchh();
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
          ),
          icon: const Icon(Icons.arrow_right_alt_rounded),
          label: const Text('Start Quiz'),
        ),
      ],
    ));
  }
}
