import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dating/FirstPageFiles/apperance.dart';
import 'package:flutter_app_dating/FirstPageFiles/info.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';
import 'package:flutter_app_dating/SetUp/welcome.dart';
import 'package:flutter_app_dating/showdata/Main.dart';
import 'package:flutter_app_dating/showdata/ShowDataPage.dart';
import 'package:flutter_app_dating/signup.dart';
import 'package:flutter_app_dating/storage/save.dart';
class Home3 extends StatefulWidget {


  @override
  Home3State createState() => Home3State();
}

class Home3State extends State<Home3> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Welcome Admin! '),
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

                  accountName: Text('You are An admin '),
                  accountEmail: Text('908-391-8588'),
                  currentAccountPicture: new GestureDetector(
                    onTap: (){
                      print("This is the current admin");},
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage('images/computer.jpg'),

                      )
                    
                    
                  ),
                ),




                ListTile(

                  title: Text('Users data'),
                  leading: Icon(Icons.date_range),


                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => ShowDataPage(),
                        fullscreenDialog: true));
                  },


                ),
                ListTile(

                  title: Text('Add data to a user without an account '),
                  leading: Icon(Icons.add),


                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => MyApp1(),
                        fullscreenDialog: true));
                  },

                ),

                ListTile(

                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Notes(), fullscreenDialog: true));

                  },
                  leading: Icon(Icons.chat_bubble_outline),
                  title: Text('Communicate with admins'),


                ),





              ]
          )
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage('images/adminPage.jpg'), fit: BoxFit.fill)
              )),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(bottom: 20),
                ),

                Text('Do Not Forget To Log Out When Your Done',
                  style: TextStyle(color: Colors.greenAccent,
                      fontSize: 20, fontWeight: FontWeight.bold),),
                Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 190.0, right: 20),
        child: RaisedButton(
          color: Colors.lightGreenAccent,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: ( context ) => ShowDataPage(),
                fullscreenDialog: true));          },
          child: Text('All USERS DATA'),
        ),
      ),


      Padding(
        padding: const EdgeInsets.only(top: 190.0, right: 20),
        child: RaisedButton(
          color: Colors.lightGreenAccent,
          onPressed: () {
            showModalBottomSheet(context: context,
                builder: (context){
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add_comment),
                    title: Text('ADD USERS Without Account'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1(), fullscreenDialog: true));

                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.clear),
                    title: Text('Logout '),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => firstPage(), fullscreenDialog: true));

                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.chat_bubble_outline),
                    title: Text('Communicate with admins'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Notes(), fullscreenDialog: true));

                    },
                  )

                ],

              );

            }




            );

          },
          child: Text('MORE OPTIONS'),
        ),
      ),


  ]
                ),



              ],

            ),


          ),





        ],
      ),
    );
  }

  void navigateTomysignup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_Up(), fullscreenDialog: true));

  }
}




/*


class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('imagess/computer.jpg');
    Image image = Image(image: assetImage,);
    return Container(child: image,);
  }
}


*/