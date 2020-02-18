import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: Home(),
    );
  }
}