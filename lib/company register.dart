import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:regren/RequestScreen.dart';

class comregister extends StatefulWidget {
  @override
  _comregisterState createState() => _comregisterState();
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController item = TextEditingController();
TextEditingController confirmpassword = TextEditingController();

class _comregisterState extends State<comregister> {
  List data;
  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("http://192.168.1.13/API/index.php"),
        headers: {"Accept": "application/json"});
    final map = jsonDecode(response.body);
    //data = json.decode(response.body);

    print(map);
    return "0";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'CleanPoint',
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
                  padding: EdgeInsets.only(left: 60, right: 60, bottom: 30),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () async {},
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
                            borderSide: BorderSide(color: Colors.black54),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        fillColor: Colors.green,
                        filled: true,
                        //prefixText: 'username',
                        //prefixIcon:Icon(Icons.person,color: Colors.white,),
                        labelText: '     company name',
                        labelStyle: TextStyle(color: Colors.black54)),
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
                        labelStyle: TextStyle(color: Colors.black54)),
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
                        labelStyle: TextStyle(color: Colors.black54)),
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
                        labelStyle: TextStyle(color: Colors.black54)),
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
                      setState(() {
                        getData();
                      });
                      login(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Request()));
                    },
                    child: Text(
                      ' REGISTER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          //height: 22,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  login(BuildContext context) async {
    List data = await loginn(name.text, email.text, password.text, item.text);
    print(data);
    if (data.length != 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Request()));
    } else {
      print("false");
    }
  }
}

Future loginn(String username, String email, String pass, String item) async {
  String url = "http://192.168.1.11/API/insert.php";

  http.Response response = await http.post(url,
      body: {'name': username, 'email': email, 'password': pass, 'item': item});
  print(response.statusCode);
  if (response.statusCode == 200) {
    return json.encode(response.body);
  }
}
