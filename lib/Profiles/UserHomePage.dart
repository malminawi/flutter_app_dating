import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dating/Profiles/ProfileFour.dart';
import 'package:flutter_app_dating/Profiles/AllUsersProfiles.dart';
import 'package:flutter_app_dating/Profiles/profile2.dart';
import 'package:flutter_app_dating/Profiles/profile3.dart';
import 'package:flutter_app_dating/profile1.dart';
import 'package:flutter_app_dating/showdata/Main.dart';

class mainScreeno extends StatefulWidget {
  @override
  _mainScreenoState createState() => _mainScreenoState();
}

class _mainScreenoState extends State<mainScreeno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(








      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[



                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.infinity,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileOnePage()));

                        },
                        child: Image.asset('images/me.jpg'),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.maxFinite,
                       height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileTwoPage()));

                        },
                        child: Image.asset('images/boy.jpg'),
                      ),
                    ),

                    Expanded(
                      child: MaterialButton(
                       // minWidth: double.maxFinite,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileThreePage()));

                        },
                        child: Image.asset('images/girl.jpg'),
                      ),
                    ),

                  ]

              ),
              Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[



                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.infinity,
                         height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileFivePage()));



                        },
                        child: Image.asset('images/old.jpg'),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.maxFinite,
                         height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/f.jpg'),
                      ),
                    ),

                    Expanded(
                      child: MaterialButton(
                        // minWidth: double.maxFinite,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/bg.png'),
                      ),
                    ),

                  ]

              ),
              Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[



                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.infinity,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/signup.jpg'),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.maxFinite,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/bg3.png'),
                      ),
                    ),

                    Expanded(
                      child: MaterialButton(
                        // minWidth: double.maxFinite,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/adminPage.jpg'),
                      ),
                    ),

                  ]

              ),
              Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[



                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.infinity,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/me.jpg'),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        //minWidth: double.maxFinite,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/boy.jpg'),
                      ),
                    ),

                    Expanded(
                      child: MaterialButton(
                        // minWidth: double.maxFinite,
                        height: 230,// set minWidth to maxFinite
                        color: Colors.black,
                        onPressed: () {},
                        child: Image.asset('images/girl.jpg'),
                      ),
                    ),

                  ]

              ),










            ],



          ),
        ),
      ),




    );
  }
}
