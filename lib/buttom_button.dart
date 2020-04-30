import 'package:flutter/material.dart';
import 'constants.dart';
class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeTextButtom,
            )),
        color: kButtomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kButtomContainerHight,
      ),
    );
  }
}