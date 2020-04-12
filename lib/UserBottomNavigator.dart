


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dating/FirstPageFiles/info.dart';
import 'package:flutter_app_dating/Profiles/AllUsersProfiles.dart';
import 'package:flutter_app_dating/profile1.dart';
import 'package:flutter_app_dating/showdata/Main.dart';
import 'package:flutter_app_dating/signup.dart';
import 'package:flutter_app_dating/ADminMainPage.dart';

import 'Profiles/UserHomePage.dart';
import 'Profiles/profile2.dart';






class Home5 extends StatefulWidget {

  @override

  _Home5State createState() => _Home5State();

}



class _Home5State extends State<Home5> {

  // Properties & Variables needed



  int currentTab = 0; // to keep track of active tab index

  final List<Widget> screens = [

    mainScreeno(), Home3(), Home5(), mainScreen(),

  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = mainScreeno(); // Our first view in viewport



  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Welcome Back! '),
        actions: <Widget>[
          IconButton(
            onPressed: ( ) {

              FirebaseAuth.instance.signOut().then((value){
                Navigator.of(context).pop();
              });

            },

            icon: Icon(Icons.gps_off),
            iconSize: 45,
            color: Colors.white,

          )

        ],
      ),
      drawer: Drawer(


          child: ListView(


              padding: EdgeInsets.zero,
              children: <Widget>[


                UserAccountsDrawerHeader(

                  accountName: Text('You are A User '),
                  accountEmail: Text('908-391-8588'),
                  currentAccountPicture: new GestureDetector(
                      onTap: (){
                        print("This is the current user");},
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage('images/view.jpg'),

                      )


                  ),
                ),
                ListTile(

                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => mainScreen(), fullscreenDialog: true));

                  },
                  leading: Icon(Icons.chat_bubble_outline),
                  title: Text('All users profiles '),


                ),




                ListTile(

                  title: Text('user profile 1'),
                  leading: Icon(Icons.date_range),


                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => ProfileOnePage(),
                        fullscreenDialog: true));
                  },


                ),
                ListTile(

                  title: Text('Seconed user profile'),
                  leading: Icon(Icons.add),


                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => ProfileTwoPage(),
                        fullscreenDialog: true));
                  },


                ),
                ListTile(

                  title: Text('HomePage'),
                  leading: Icon(Icons.add),


                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => Home5(),
                        fullscreenDialog: true));
                  },


                ),

                ListTile(

                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1(), fullscreenDialog: true));

                  },
                  leading: Icon(Icons.chat_bubble_outline),
                  title: Text('save or edit your info  '),


                ),
                ListTile(

                  onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => mainScreen(), fullscreenDialog: true));

                  },
                  leading: Icon(Icons.settings),
                  title: Text('Setting'),


                ),





              ]
          )
      ),

      body: PageStorage(

        child: currentScreen,

        bucket: bucket,

      ),



      bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),

        notchMargin: 20,

        child: Container(
          color: Colors.black,

          height: 60,

          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Row(

                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[

                  MaterialButton(

                    minWidth:40,

                    onPressed: () {

                      setState(() {

                        currentScreen =

                            mainScreeno();

                        currentTab = 0;

                      });

                    },

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Icon(

                          Icons.home,

                          color: currentTab == 0 ? Colors.red : Colors.white,

                        ),

                        Text(

                          'HOME',

                          style: TextStyle(

                            color:  currentTab == 0 ? Colors.red : Colors.white,

                          ),

                        ),

                      ],

                    ),

                  ),

                  MaterialButton(

                    minWidth: 40,

                    onPressed: () {

                      setState(() {

                        currentScreen =

                            mainScreen();

                        currentTab = 1;

                      });

                    },

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Icon(

                          Icons.perm_identity,

                          color: currentTab == 1 ? Colors.red : Colors.white,

                        ),

                        Text(

                          'Profiles ',

                          style: TextStyle(

                            color: currentTab == 1 ? Colors.red : Colors.white,

                          ),

                        ),

                      ],

                    ),

                  )



                ],

              ),


              Row(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[

                  MaterialButton(

                    minWidth: 40,

                    onPressed: () {

                      setState(() {

                        currentScreen =

                            MyApp1(); // if user taps on this dashboard tab will be active

                        currentTab = 2;

                      });

                    },

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Icon(

                          Icons.add_box,

                          color: currentTab == 2 ? Colors.red : Colors.white,

                        ),

                        Text(

                          'Add Data',

                          style: TextStyle(

                            color: currentTab == 2 ? Colors.red : Colors.white,

                          ),

                        ),

                      ],

                    ),

                  ),

                  MaterialButton(

                    minWidth: 40,

                    onPressed: () {

                      setState(() {

                        currentScreen =

                            OnBoarding();

                        currentTab = 3;

                      });

                    },

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Icon(

                          Icons.chat,

                          color: currentTab == 3 ? Colors.red : Colors.white,

                        ),

                        Text(

                          'Info',

                          style: TextStyle(

                            color: currentTab == 3 ? Colors.red : Colors.white,

                          ),

                        ),

                      ],

                    ),

                  )

                ],

              )



            ],

          ),

        ),

      ),

    );

  }

}