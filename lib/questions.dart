import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions_data.dart';

class Questions extends StatefulWidget {
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  @override
  Widget build(context) {
    var currentQuestionIndex = 0;
    void answerQuetion() {
      setState(() {
        currentQuestionIndex++;
      });
    }

    final currentQuestion = questionsData[currentQuestionIndex];
    return Center(
      child: SizedBox(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                child: Text(currentQuestion.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
                padding: const EdgeInsets.all(20.0),
              ),
              ...currentQuestion.getShuffledAns().map((text) {
                return AnswerButton(answerText: text, onTap: answerQuetion);
              }),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
