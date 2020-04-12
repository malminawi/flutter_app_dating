import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../signup.dart';





class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
        title: Text(  'PLEASE READ OUR AGREEMENT CARFULLY '),
      ),
body: SingleChildScrollView(

  child: SelectableText(

      'THIS TEXT WAS TAKEN FROM https://flutterbyexample.com/about-flutter/''\n which means i DID NOT write it it is just a sample ''\n\nFlutter is a mobile SDK that, at its core, is about empowering everyone to b'
          'uild beautiful mobile apps. Whether you come from the world of web development or native mobile development, F'
          'lutter makes it easier to create mobile a'
          'pps in a familiar, simplified way, without ever giving up control to the framework. ' '\n What’s Dar'
          't Dart is a programming language created by Google and was used to write Flutter. Dar'
          't was created, more or less, because Google wanted a language that was "better" than JavaScript to'
          ' write server side and front-end code. From what I understand, the main issue they had with JavaScript is'
          ' how slowly it updates with new features since it relies on a huge committee for approvals and several browser vendors to implement it.',



style: TextStyle(fontSize: 25),


  ),
),
    );
  }
}
