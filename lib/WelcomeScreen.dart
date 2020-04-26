import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regren/company%20register.dart';
import 'package:regren/userregister.dart';
import 'package:shifting_tabbar/shifting_tabbar.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: ShiftingTabBar(
              color: Colors.white,
              brightness: Brightness.light,
              labelStyle: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              tabs: [
                ShiftingTab(
                  icon: Icon(
                    Icons.account_balance,
                    color: Colors.green,
                  ),
                  text: 'company',
                ),
                ShiftingTab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                    text: 'user'),
              ]),
          body: TabBarView(children: [comregister(), userreigster()]),
          /*body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            //  height: MediaQuery.of(context).size.height-200,
            color: Color(0XFF4a83b7),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                //    height: MediaQuery.of(context).size.height-200,
                //  width: MediaQuery.of(context).size.width -200,
                child: ListView(
                  children: <Widget>[
                    Image.asset(
                      'assets/logo.png',
                      width: 250,
                      height: 300,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Have an account ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "sign in.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        "OR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: 50,
                        child: RaisedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => comregister()));
                          },
                          icon: Icon(
                            Icons.account_balance,
                            color: Colors.white,
                            size: 30,
                          ),
                          label: Text(
                            'Register a Company',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.white10,
                          splashColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: 20,
                        child: RaisedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => userreigster()));
                          },
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 25,
                          ),
                          label: Text(
                            'Register as a User',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.white10,
                          splashColor: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),*/
        ),
      ),
    );
  }
}
