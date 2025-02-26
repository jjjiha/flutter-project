import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // foregroundColor: Colors.orangeAccent,
              backgroundColor: Colors.red,
              textStyle: const TextStyle(color: Colors.white),
            ),
            child: Text(question),
            onPressed: () {}));
  }
}
