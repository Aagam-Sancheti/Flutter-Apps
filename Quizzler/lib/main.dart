import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<String> questions = [
    'The human body has 206 bones.',
    'Water boils at 90°C at sea level.',
    'Lightning is hotter than the surface of the Sun.',
    'Some mushrooms can glow in the dark.',
    'Bananas grow on trees.',
    'The Eiffel Tower can be 15 cm taller during the summer.',
    'Honey never spoils.',
    'Octopuses have three hearts.',
    'A group of flamingos is called a "flamboyance."',
    'The shortest war in history lasted 38 minutes.',
    'A day on Venus is longer than a year on Venus.',
  ];

  List<bool> answers = [
    true,
    false,
    true,
    true,
    false,
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  List<Widget> icons = [];

  int questionIndex = 0;
  int score = 0;

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (answers[questionIndex] == userPickedAnswer) {
        icons.add(const Icon(Icons.check, color: Colors.green));
        score++;
      } else {
        icons.add(const Icon(Icons.close, color: Colors.red));
      }

      if (questionIndex < questions.length - 1) {
        questionIndex++;
      } else {
        // Show alert when the quiz is finished
        Alert(
          context: context,
          type: AlertType.info,
          title: "Quiz Finished",
          desc: "Your score is $score/${questions.length}",
          buttons: [
            DialogButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  questionIndex = 0;
                  score = 0;
                  icons.clear();
                });
              },
              width: 120,
              child: const Text(
                "Restart",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ).show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                '${questionIndex + 1}) ${questions[questionIndex]}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () => checkAnswer(true),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'False',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () => checkAnswer(false),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(children: icons),
        ),
      ],
    );
  }
}
