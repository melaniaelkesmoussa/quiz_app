import 'package:flutter/material.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/login_screen.dart';

class ScoreScreen extends StatelessWidget {
  final int numberOfQuestions;
  final int score;
  final Color backgroundColor;

  const ScoreScreen({
    super.key,
    required this.numberOfQuestions,
    required this.score,
    required this.backgroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Melania, Your score is:",
              style: TextStyle(fontSize: 40),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "$score / $numberOfQuestions",
                style: TextStyle(fontSize: 40),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                foregroundColor: Colors.white,
              ),
              child: Text("Play Again", style: TextStyle(fontSize: 26)),
            ),
            SizedBox(height: 22),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                "Log out",
                style: TextStyle(color: backgroundColor, fontSize: 26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
