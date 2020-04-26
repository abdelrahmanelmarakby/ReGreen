//packages Imports

import 'package:flutter/material.dart';

import 'Login.dart';
import 'Splash screen.dart';
import 'WelcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReGREEN',
      theme: ThemeData.light(),
      home: SplashScreen(),
      routes: {
        'WelcomeScreen': (context) => WelcomeScreen(),
        'LoginScreen': (context) => LoginScreen(),
      },
    );
  }
}
