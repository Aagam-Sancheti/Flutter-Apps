import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int val = Random().nextInt(4) + 1; // Initialize with a random number

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Center(
            child: Text(
              "Ask me Anything",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ), // TextStyle to customize the text
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed:
                      () => {
                        // Generate a new random number between 1 and 5
                        setState(() {
                          val =
                              Random().nextInt(5) +
                              1; // Update the state with a new random number
                        }),
                        // Action to perform when the button is pressed
                        // For example, you can change the image or perform any other action
                        // Replace with your action
                      },
                  child: Image(
                    image: AssetImage(
                      'images/ball$val.png', // Replace with your image path
                    ),
                  ),
                ),
              ),

              // Expanded widget to take up available space
            ],
          ),
        ),
      ),
    );
  }
}
