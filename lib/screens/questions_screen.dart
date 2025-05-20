import 'package:flutter/material.dart';
import 'package:quiz_app/screens/preview_screen.dart';

class QuestionsScreen extends StatefulWidget {
  final Map<String, dynamic> category;

  const QuestionsScreen({super.key, required this.category});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  void _showConfirmationDialog(BuildContext context) async {
    bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm'),
          content: Text('Do you want to confirm your answers?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );

    if (confirmed == true) {
      if (!mounted) return;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder:
              (context) => PreviewScreen(
                questionsAndAnswers: questionsAndAnswers,
                currentScore: currentScore,
                backgroundColor: widget.category["categoryColor"],
              ),
        ),
      );
    }
  }

  int currentQuestion = 1;
  int currentScore = 0;
  List<Map<String, dynamic>> questionsAndAnswers = [];
  bool showErrorIcon = false;

  @override
  Widget build(BuildContext context) {
    var currentQ = widget.category['questionsAndAnswers'][currentQuestion - 1];
    int ansLength = currentQ['answers'].length;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.category["categoryName"],
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              "$currentQuestion/${widget.category['questionsAndAnswers'].length}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: widget.category["categoryColor"],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$currentQuestion: ${currentQ['question']}",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          for (int i = 0; i < ansLength; i++)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    final selected = currentQ['answers'][i];
                    Map<String, dynamic> newAnswer = {
                      'question': currentQ['question'],
                      'selectedAnswer': selected['answerText'],
                      'score': selected['score'],
                    };

                    bool found = false;
                    for (int j = 0; j < questionsAndAnswers.length; j++) {
                      if (questionsAndAnswers[j]['question'] ==
                          newAnswer['question']) {
                        currentScore -= questionsAndAnswers[j]['score'] as int;
                        questionsAndAnswers[j] = newAnswer;
                        found = true;
                        break;
                      }
                    }
                    if (!found) {
                      questionsAndAnswers.add(newAnswer);
                    }

                    currentScore += newAnswer['score'] as int;

                    if (currentQuestion ==
                        widget.category['questionsAndAnswers'].length) {
                      _showConfirmationDialog(context);
                    } else {
                      currentQuestion++;
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.category["categoryColor"],
                ),
                child: Text(
                  "${currentQ['answers'][i]['answerText']}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (questionsAndAnswers.isNotEmpty && currentQuestion > 1) {
                    final lastAnswer = questionsAndAnswers.removeLast();

                    setState(() {
                      currentQuestion--;
                      currentScore -= lastAnswer['score'] as int;
                      showErrorIcon = lastAnswer['selectedAnswer'] == null;
                    });
                  }
                },
                child: Text("Back"),
              ),
              if (showErrorIcon)
                Icon(Icons.error_outline, color: Colors.red, size: 28),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    questionsAndAnswers.add({
                      'question': currentQ['question'],
                      'selectedAnswer': null,
                      'score': 0,
                    });

                    if (currentQuestion ==
                        widget.category['questionsAndAnswers'].length) {
                      _showConfirmationDialog(context);
                    } else {
                      currentQuestion++;
                    }
                  });
                },
                child: Text("Skip"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
