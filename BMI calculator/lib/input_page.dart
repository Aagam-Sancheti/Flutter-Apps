import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusedCard.dart';

const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late bool selectedGender;
  // 0 male, 1 female
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  void updateColour(bool selectedGender) {
    selectedGender
        ? maleCardColor = kInactiveCardColor
        : maleCardColor = kActiveCardColor;
    // this is ternary operator
    selectedGender
        ? femaleCardColor = kActiveCardColor
        : femaleCardColor = kInactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        backgroundColor: Color(0xFF0A0E21),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusedCard(
                      onPress: () {
                        setState(() {
                          updateColour(false);
                        });
                      },
                      colour: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),

                  Expanded(
                    child: ReusedCard(
                      onPress:
                          () => setState(() {
                            updateColour(true);
                          }),
                      colour: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusedCard(
                colour: kActiveCardColor,
                cardChild: Container(),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusedCard(
                      colour: kActiveCardColor,
                      cardChild: Container(),
                    ),
                  ),
                  Expanded(
                    child: ReusedCard(
                      colour: kActiveCardColor,
                      cardChild: Container(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
              child: Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
