import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:regren/InputPage.dart';
import 'package:regren/reusable_card.dart';
import 'package:regren/userregister.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'buttom_button.dart';
import 'constants.dart';

class Details_page extends StatefulWidget {
  Details_page({@required this.details});

  final String details;

  @override
  _Details_pageState createState() => _Details_pageState();
}

// ignore: non_constant_identifier_names
TextEditingController Name = TextEditingController();
// ignore: non_constant_identifier_names
TextEditingController Phone = TextEditingController();

// ignore: camel_case_types
class _Details_pageState extends State<Details_page> {
  String quantity;
  TextEditingController __quantity = TextEditingController();
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ReGreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: 40.0,
            height: 60.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text('Enter Quantity', style: kFeildTextLableStyle),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: TextField(
                    onChanged: (value) {
                      quantity = value;
                      print(quantity);
                    },
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    textAlign: TextAlign.center,
                    decoration: kDecorationOfTextFeild,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              myColor: kActiveCardColor,
              cardChild: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Read More Details About the product',
                      style: kTitleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(widget.details,
                        style: kProductInformationTextStyle),
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: _value,
                        onChanged: (bool val) {
                          setState(() {
                            _value = val;
                          });
                        },
                        activeColor: Colors.black,
                      ),
                      Text(
                        'l agree to Use my location',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, right: 60, bottom: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: Name,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          fillColor: Colors.green,
                          filled: true,
                          //prefixText: 'username',
                          //prefixIcon:Icon(Icons.person,color: Colors.white,),
                          labelText: '     phone',
                          labelStyle: TextStyle(color: Colors.white)),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          //height: 22,
                          color: Colors.lightBlueAccent),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, right: 60, bottom: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: Phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          fillColor: Colors.green,
                          filled: true,
                          //prefixText: 'username',
                          //prefixIcon:Icon(Icons.person,color: Colors.white,),
                          labelText: '     phone',
                          labelStyle: TextStyle(color: Colors.white)),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          //height: 22,
                          color: Colors.lightBlueAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTitle: 'Make A Request',
            onTap: () {
              if (_value && Phone != null && Name != null && Email != null) {
                print("object");
                signup(context);
              } else {
                Alert(
                        context: context,
                        title: "Invalid or missing input",
                        desc: "Invalid quantity or Not Chicked box")
                    .show();
              }
            },
          ),
        ],
      ),
    );
  }

  signup(BuildContext context) async {
    var location =
        Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    final data = await Signup(Name.text, Email.text, location.toString(),
        Phone.text, item, __quantity.text);
    print(data);

    if (data.length != 0) {
    } else {}
  }

  // ignore: non_constant_identifier_names
  Future Signup(String name, String email, String location, String phone,
      String item, String quantity) async {
    String url = "http://192.168.1.3/API/Request.php";

    http.Response response = await http.post(url, body: {
      'name': Name,
      'email': Email,
      'location': location,
      'phone': Phone,
      'item': item,
      'quantity': __quantity
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      return json.encode(response.body);
    }
  }
}
