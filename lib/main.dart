import 'package:flutter/material.dart';
import 'src/landing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Lunchtime',
        ),
        home: Landing());
  }
}
