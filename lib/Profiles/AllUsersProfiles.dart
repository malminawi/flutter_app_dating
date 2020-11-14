import 'package:flutter/material.dart';
import 'package:flutter_app_dating/Profiles/ProfileFour.dart';
import 'package:flutter_app_dating/Profiles/profile2.dart';
import 'package:flutter_app_dating/Profiles/profile3.dart';
import 'package:flutter_app_dating/profile1.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}
class _mainScreenState extends State<mainScreen> {
  List<Widget> myPages = [ProfileOnePage(), ProfileTwoPage(), ProfileThreePage(), ProfileFivePage() ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: myPages.length,
        itemBuilder: (context, position) => myPages[position],
      ),

    );
  }
}
