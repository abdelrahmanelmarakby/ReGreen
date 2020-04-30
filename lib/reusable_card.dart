import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.myColor, this.cardChild, this.onPress});
  final Color myColor;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 200,
        width: 175,
        child: cardChild,
        margin: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
