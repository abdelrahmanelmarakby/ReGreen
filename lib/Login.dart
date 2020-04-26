import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class Services {
  //location functionality =>

  var lat = 0.5;
  var lon = 0.5;

  String place = "";

  void getLocation() async {
    var position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    lat = position.latitude;
    lon = position.longitude;
    print(lat);
    print(lon);
  }

  location(BuildContext context) async {
    List data = await getLoc(lat, lon, place);
    print(data);

    if (data.length != 0) {
    } else {
      print("false");
    }
  }

  Future getLoc(double lat, double lon, String place) async {
    String url = "http://192.168.1.11/API/insertlocation.php";
    http.Response response =
        await http.post(url, body: {'lat': lat, 'lon': lon});
    print(response.statusCode);
    if (response.statusCode == 200) {
      return json.encode(response.body);
    }
  }

  //login functionality =>

}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(18, 56, 18, 1),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        /* appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Cleanpoint',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 32, color: Colors.green),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),*/
        body: Container(
          color: Colors.white,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset('assets/login.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 60, right: 60, bottom: 30),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        fillColor: Colors.green,
                        filled: true,
                        labelText: '     email',
                        labelStyle: TextStyle(color: Colors.black54)),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 60, right: 60, bottom: 30),
                  child: TextFormField(
                    obscureText: true,
                    controller: password,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        fillColor: Colors.green,
                        filled: true,
                        labelText: '     Password',
                        labelStyle: TextStyle(color: Colors.black54)),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () async {
                      Services().getLocation();
                      Services().location(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
