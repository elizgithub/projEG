import 'package:flutter/material.dart';
import './UI/home.dart';
import './UI/mygpa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My GPA",
      home: new Home(),
    );
  }
}
