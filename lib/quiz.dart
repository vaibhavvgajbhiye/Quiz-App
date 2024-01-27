import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/text_image.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var activeScreen = 'start';

  void changeScreen() {
    setState(() {
      activeScreen = 'question';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 115, 187),
        body: Center(
          child: activeScreen == 'start' ? Textt(changeScreen) : Questions(),
        ),
      ),
    );
  }
}
