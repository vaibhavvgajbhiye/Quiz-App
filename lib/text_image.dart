import 'package:flutter/material.dart';

class Textt extends StatelessWidget {
  const Textt(this.changeScreen, {super.key});
  final void Function() changeScreen;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Image(
          image: AssetImage('assets/images/quiz-logo.png'),
          width: 250,
          color: Color.fromARGB(131, 246, 243, 240),
        ),
        const Padding(padding: EdgeInsets.fromLTRB(0, 28, 0, 20)),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 235, 230, 230),
          ),
        ),
        //Button
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: OutlinedButton.icon(
            onPressed: changeScreen,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 141, 36, 160),
            ),
            icon:
                const Icon(Icons.arrow_right_alt_outlined, color: Colors.white),
            label: const Text('Start Quiz',
                style: TextStyle(color: Color.fromARGB(226, 252, 247, 247))),
            // style: Colors.white,
          ),
        ),
      ],
    );
  }
}
