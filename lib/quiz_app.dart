import 'package:flutter/material.dart';
import 'data/questions.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<String> selectedAnswers = List.filled(questions.length, "");

  String activeScreenName = "questions-screen";
  int correctScore = 0;

  void _restart() {
    setState(() {
      selectedAnswers = List.filled(questions.length, "");
      activeScreenName = 'questions-screen';
    });
  }

  void _submit() {
    setState(() {
      activeScreenName = "ResultScreen";
    });
  }

  void numberOfCoreectAnswers() {
    for (int i = 0; i < questions.length; i++) {
      if (selectedAnswers[i] == questions[i].correctAnswer) {
        correctScore++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeScreen;
    return Scaffold(backgroundColor: Colors.green, body: activeScreen);
  }
}
