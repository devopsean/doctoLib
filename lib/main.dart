import 'dart:async';

import 'package:doctolib/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),

      },
    );
  }

  // startTime() async {
  //   var duration = new Duration(seconds: 1);
  //   return new Timer(duration, route);
  // }
  // route() {
  //   Navigator.pushNamed(context, HomePage.id);
  // }
}

class SplashScreen extends StatefulWidget {
  static String id = 'splashscreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: Image(
            image: AssetImage('assets/logo.png'),
          ),
        ),
      ),
    );
  }
}
