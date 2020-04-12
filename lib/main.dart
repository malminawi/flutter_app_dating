import 'package:flutter/material.dart';
import 'package:flutter_app_dating/FirstPageFiles/apperance.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';
import 'package:flutter_app_dating/SetUp/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demhho',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: firstPage(),
    );
  }
}

