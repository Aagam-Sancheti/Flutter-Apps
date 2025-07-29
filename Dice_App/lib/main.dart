import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(DicePage());
}

// widget part
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

// state part
class _DicePageState extends State<DicePage> {
  int topDiceNumber = 1;
  int bottomDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.teal.shade800,
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(130, 0, 130, 0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          topDiceNumber = Random().nextInt(6) + 1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('images/dice$topDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          bottomDiceNumber = Random().nextInt(6) + 1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('images/dice$bottomDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120),
                  child: Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          topDiceNumber = Random().nextInt(6) + 1;
                          bottomDiceNumber = Random().nextInt(6) + 1;
                        });
                      },
                      child: Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.refresh, size: 50, color: Colors.black),
                            Text(
                              'Roll the Die',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
