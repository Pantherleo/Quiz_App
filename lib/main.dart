import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(
    (const QuizScreen()),
  );
}

/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 100),
            const Center(
              child: const Text(
                'Welcome To The Quiz',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
            const SizedBox(height: 100),
            Image.asset('assets/images/quizlo.png', width: 250, height: 250),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}*/
