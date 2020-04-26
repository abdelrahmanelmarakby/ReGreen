import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:regren/itemsScreen.dart';

import 'WelcomeScreen.dart';

class userreigster extends StatefulWidget {
  @override
  _userreigsterState createState() => _userreigsterState();
}

class _userreigsterState extends State<userreigster> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Cleanpoint',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 32, color: Colors.green),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
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
                  padding: const EdgeInsets.only(
                      left: 60, right: 60, bottom: 30, top: 20),
                  child: TextFormField(
                    controller: name,
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
                  padding: EdgeInsets.only(
                    left: 60,
                    right: 60,
                    bottom: 30,
                  ),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () async {
                      login() == true
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemsScreen()))
                          : Text('error');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.green,
                  thickness: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 60, right: 60, bottom: 30, top: 30),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        fillColor: Colors.green,
                        filled: true,
                        //prefixText: 'username',
                        //prefixIcon:Icon(Icons.person,color: Colors.white,),
                        labelText: '     username',
                        labelStyle: TextStyle(color: Colors.white)),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        //height: 22,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 60, right: 60, bottom: 30),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        fillColor: Colors.green,
                        filled: true,
                        //prefixText: 'username',
                        //prefixIcon:Icon(Icons.person,color: Colors.white,),
                        labelText: '     email',
                        labelStyle: TextStyle(color: Colors.white)),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        //height: 22,
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
                        //prefixText: 'username',
                        //prefixIcon:Icon(Icons.person,color: Colors.white,),
                        labelText: '     Password',
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
                    obscureText: true,
                    controller: confirmpassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        fillColor: Colors.green,
                        filled: true,
                        //prefixText: 'username',
                        //prefixIcon:Icon(Icons.person,color: Colors.white,),
                        labelText: '     confirm password',
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
                    controller: phone,
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
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () async {
                      signup(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItemsScreen()));
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          //height: 22,
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

  signup(BuildContext context) async {
    List data = await Signup(name.text, email.text, password.text, phone.text);
    print(data);
    if (data.length != 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    } else {
      print("false");
    }
  }

  Future Signup(
      String name, String email, String password, String phone) async {
    String url = "http://192.168.1.13/Mutaman/insertuser.php";

    http.Response response = await http.post(url, body: {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      return json.encode(response.body);
    }
  }

  Future<List> login() async {
    final response = await http.post('http://192.168.1.13/API/login.php',
        body: {'name': name.text, 'password': password.text});
    print(json.encode(response.body));
    print(jsonEncode(response.body.contains('Login Matched')));
    if (response.body.contains('Login Matched')) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ItemsScreen()));
    }
  }
}
