import 'package:flutter/material.dart';
import 'package:wmk/view/About_View.dart';
import 'package:wmk/view/Home_View.dart';
import 'package:wmk/view/Job_View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/0',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/0': (context) => const Home_View(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/1': (context) => const Job_View(),
        '/3': (context) => AboutUS()
      },
      home: Home_View(),
    );
  }
}
