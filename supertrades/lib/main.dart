import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:supertrades/screens/fifthscreen.dart';
import 'package:supertrades/screens/fourthscreen.dart';
import 'package:supertrades/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Super Trades",
      theme: ThemeData(fontFamily: 'JosefinSans'),
      home: const FourthScreen(),
    );
  }
}
