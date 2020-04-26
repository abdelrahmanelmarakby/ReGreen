import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Network/items.dart';
import 'models/user.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  List data;
  Future<String> getData() async {
    var response = await http.get(Uri.encodeFull("192.168.1.13/API/index.php"),
        headers: {"Accept": "application/json"});
    setState(() {
      data = json.decode(response.body);
    });
    print(data[1]["id"]);
    return "0";
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: Text(
              'Cleanpoint',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.green),
            ),
            centerTitle: true,
            backgroundColor: Color(0XFF496075),
          ),
          body: FutureBuilder(
              future: getItem(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<User> users = snapshot.data;
                  return ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: <Widget>[
                              Text(users[index].name),
                            ],
                          ),
                        );
                      });
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })

          /* Container(
          color: Color(0XFF496075),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "Number of requestes is  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.green,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Username:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(18, 56, 18, 1))),
                      Text('Email:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(18, 56, 18, 1))),
                      Text('Location:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(18, 56, 18, 1))),
                      Text('Phone:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(18, 56, 18, 1))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),*/
          ),
    );
  }
}
