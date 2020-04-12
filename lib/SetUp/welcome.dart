//import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app_dating/Admin_signup.dart';
import 'package:flutter_app_dating/Profiles/AllUsersProfiles.dart';
import 'package:flutter_app_dating/Profiles/UserHomePage.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';
import 'package:flutter_app_dating/UserBottomNavigator.dart';
import 'package:flutter_app_dating/profile1.dart';
import 'package:flutter_app_dating/showdata/Main.dart';
import 'package:flutter_app_dating/showdata/ShowDataPage.dart';
import 'package:flutter_app_dating/showdata/myData.dart';
import 'package:flutter_app_dating/signup.dart';
import 'package:flutter_app_dating/storage/save.dart';
import 'package:flutter_app_dating/dashboard.dart';
import 'package:flutter_app_dating/ADminMainPage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome ')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

                RaisedButton(
                 onPressed:navigateToSignIn,
                  child: Text('Sign In'),
             ),

          RaisedButton(
            onPressed:navigateToSignUp,
            child: Text('testt'),
          ),
          RaisedButton(
            onPressed:navigateToSaved,
            child: Text('user page'),
          ),

          RaisedButton(
            onPressed:navigateTomyapp1,
            child: Text('ADMIN SIGN IN'),
          ),

          new RaisedButton(

            onPressed: () {

              Navigator.push(context,

                  MaterialPageRoute(builder: (context) =>  Home3()));

            },

            child: new Text('Show Data'),

          )

        ],
      ),



    );
  }

  void navigateToSignIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => mainScreen(), fullscreenDialog: true));

  }

  void navigateToSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home5(), fullscreenDialog: true));

  }

  void navigateToSaved(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => mainScreeno(), fullscreenDialog: true));

  }

  void navigateTomyapp1(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileOnePage(), fullscreenDialog: true));

  }




}
