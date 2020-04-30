import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'buttom_button.dart';
import 'constants.dart';
import 'details_page.dart';
import 'icon_content.dart';
import 'product_datails.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

String item;

class _InputPageState extends State<InputPage> {
  // var maleCardColor = inactiveCardColor;
  //var femaleCardColor = inactiveCardColor;
  Type selectedType;
  bool isChosen = false;
  String item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReGreen'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              'Choose The Product',
              style: kLargeText,
            ),
          ),
          Row(
            children: <Widget>[
              ReusableWidget(
                onPress: () {
                  setState(() {
                    selectedType = Type.oil;
                    isChosen = true;
                    item = "oil";
                  });
                },
                myColor: selectedType == Type.oil
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: IconContent(
                  text: 'OIL',
                  icon: FontAwesomeIcons.oilCan,
                ),
              ),
              ReusableWidget(
                onPress: () {
                  setState(() {
                    selectedType = Type.cartoon;
                    isChosen = true;
                    item = "carton";
                  });
                },
                myColor: selectedType == Type.cartoon
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: IconContent(
                  text: 'CARTON',
                  icon: FontAwesomeIcons.cube,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ReusableWidget(
                onPress: () {
                  setState(() {
                    item = "food";

                    selectedType = Type.food;
                    isChosen = true;
                  });
                },
                myColor: selectedType == Type.food
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: IconContent(
                  text: 'FOOD',
                  icon: FontAwesomeIcons.recycle,
                ),
              ),
              ReusableWidget(
                onPress: () {
                  setState(() {
                    item = "paper";

                    selectedType = Type.paper;
                    isChosen = true;
                  });
                },
                myColor: selectedType == Type.paper
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: IconContent(
                  text: 'PAPER',
                  icon: FontAwesomeIcons.pager,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ReusableWidget(
                onPress: () {
                  setState(() {
                    selectedType = Type.metal;
                    isChosen = true;
                    item = "metal";
                  });
                },
                myColor: selectedType == Type.metal
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: IconContent(
                  text: 'METAL',
                  icon: FontAwesomeIcons.newspaper,
                ),
              ),
              ReusableWidget(
                onPress: () {
                  setState(() {
                    item = "plastic";

                    selectedType = Type.plastic;
                    isChosen = true;
                  });
                },
                myColor: selectedType == Type.plastic
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: IconContent(
                  text: 'PLASTIC',
                  icon: FontAwesomeIcons.wineBottle,
                ),
              ),
            ],
          ),
          ButtomButton(
            buttonTitle: 'NEXT',
            onTap: () {
              if (isChosen) {
                ProductDetails product_details = ProductDetails();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details_page(
                      details: product_details.getProductDetails(selectedType),
                    ),
                  ),
                );
              } else {
                Alert(
                        context: context,
                        title: "Inavalid or missing Request",
                        desc: "Choose Product First")
                    .show();
              }
            },
          ),
          SizedBox(
            height: 17.0,
          ),
        ],
      ),
    );
  }
}
