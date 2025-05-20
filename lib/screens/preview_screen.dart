import 'package:flutter/material.dart';
import 'package:quiz_app/screens/score_screen.dart';

class PreviewScreen extends StatelessWidget {
  final List questionsAndAnswers;
  final int currentScore;
  final Color backgroundColor;

  const PreviewScreen({
    super.key,
    required this.questionsAndAnswers,
    required this.currentScore,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your answers are:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              for (int i = 0; i < questionsAndAnswers.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Question ${i + 1}:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      questionsAndAnswers[i]['question'],
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Answer: ${questionsAndAnswers[i]['selectedAnswer'] ?? 'No answer'}",
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ScoreScreen(
                                backgroundColor: backgroundColor,
                                numberOfQuestions: questionsAndAnswers.length,
                                score: currentScore,
                              ),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text("Confirm"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
