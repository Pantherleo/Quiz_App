import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  String activeScreen = '';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      routes: {
        '/second': (context) => StartScreen(switchScreen),
      },
    );
  }
}
