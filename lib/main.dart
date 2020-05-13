import 'package:flutter/material.dart';
import 'package:moyepa/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: Image.asset(
              "images/farmer.jpg",
              fit: BoxFit.fill,
            ),
          ),
          HomeScreen(),
        ],
      ),
    );
  }
}
