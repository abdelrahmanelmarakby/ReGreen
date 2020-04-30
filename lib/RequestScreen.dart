import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Network/items.dart';
import 'models/user.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
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
                  color: Colors.green,
                  fontFamily: 'font'),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
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
                          color: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Name : ${users[index].name}',
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                'Email : ${users[index].email}',
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                'Phone : ${users[index].phone}',
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
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
