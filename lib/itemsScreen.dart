import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemsScreen extends StatefulWidget {
  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Cleanpoint',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 32, color: Colors.green),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(18, 56, 18, 1),
        ),
        body: Container(
          color: Color.fromRGBO(18, 56, 18, 1),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "What don't you want ?  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    //height: 22,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 200,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: <Widget>[
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Paper',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.newspaper,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Paper',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.newspaper,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Paper',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.newspaper,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Paper',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.newspaper,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Paper',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.newspaper,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Plastic',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.blackTie,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Metal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.schlix,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(18, 56, 18, 1),
                      child: GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('   Carton',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      //height: 22,
                                      color: Colors.green)),
                            ),
                            Icon(
                              FontAwesomeIcons.boxOpen,
                              color: Colors.green,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Thanks",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      //height: 22,
                      color: Colors.green),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
