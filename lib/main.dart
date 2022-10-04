import 'package:flutter/material.dart';
import 'package:untitled43/chat.dart';
import 'package:untitled43/homepage.dart';
import 'package:untitled43/login.dart';
import 'package:untitled43/message.dart';
import 'package:untitled43/register.dart';
import 'package:untitled43/secondscreen.dart';
import 'package:untitled43/splachscreen.dart';
import 'package:untitled43/thirdscreen.dart';
import 'package:untitled43/welcomescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const welcomescreen(),
    );
  }
}
