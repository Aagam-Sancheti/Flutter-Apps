import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  Color colour;
  Widget cardChild;
  Function onPress;
  ReusedCard({
    super.key,
    this.colour = const Color(0xFF1D1E33),
    required this.cardChild,
    required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
        child: cardChild,
      ),
    );
  }
}
