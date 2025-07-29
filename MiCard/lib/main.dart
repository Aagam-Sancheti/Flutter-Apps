import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("images/aagam.jpeg"),
              ),
              Text(
                "Aagam Sancheti",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "FLUTTER APP DEVELOPER",
                style: TextStyle(
                  fontFamily: "Source Sans3",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.teal.shade100,
                  height: 10,
                  thickness: 1,
                  indent: 60,
                  endIndent: 60,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(35, 20, 35, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 5, 0, 0),
                      child: Icon(size: 30, color: Colors.black, Icons.phone),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "+91 7517642789",
                        style: TextStyle(
                          fontFamily: "Pacifico",
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 14, 0, 5),
                      child: Icon(Icons.email, size: 30, color: Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      child: Text(
                        "aagam.sancheti@gmail.com",
                        style: TextStyle(
                          fontFamily: "Pacifico",
                          color: Colors.black,
                          fontSize: 27,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
