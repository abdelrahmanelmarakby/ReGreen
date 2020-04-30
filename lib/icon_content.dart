import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.text, this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 45,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(text, style: klableTextStyle)
      ],
    );
  }
}
