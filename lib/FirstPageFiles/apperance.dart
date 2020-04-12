import 'package:flutter/material.dart';
import 'package:flutter_app_dating/Admin_signup.dart';
import 'package:flutter_app_dating/FirstPageFiles/info.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';
import 'package:flutter_app_dating/SetUp/welcome.dart';
import 'package:flutter_app_dating/signup.dart';
import 'package:flutter_app_dating/ADminMainPage.dart';
class firstPage extends StatefulWidget {


  @override
  firstPageState createState() => firstPageState();
}

class firstPageState extends State<firstPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        //leading: Icon(Icons.info),
        title: Text('Welcome To the Dating App! '),
        actions: <Widget>[
          IconButton(
            onPressed: ( ) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ( context ) => OnBoarding()));
            },
            icon: Icon(Icons.info),
          )

        ],
      ),
      drawer: Drawer(


          child: ListView(


              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Select one '),
                  decoration: new BoxDecoration(
                      color: Colors.lime
                  ),
                ),

                ListTile(

                  title: Text('Log in Page '),

                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => LoginPage(),
                        fullscreenDialog: true));
                  },


                ),
                ListTile(

                  title: Text('Sign Up Page '),

                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => Sign_Up(),
                        fullscreenDialog: true));
                  },


                ),

/*
                ListTile(

                  title: Text('welcome  Page '),

                  onTap: ( ) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: ( context ) => WelcomePage(),
                        fullscreenDialog: true));
                  },


                ),
*/

              ]
          )
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage('images/f.jpg'), fit: BoxFit.fill)
              )),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(bottom: 120),
                ),

                Text('Please pick an option to log in ',
                  style: TextStyle(color: Colors.white,
                      fontSize: 30),),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.only(bottom: 100),
                      ),

                      SizedBox(

                        width: 200,
                        height: 50,
                        child: RaisedButton(
                          child: Text('Log in as a user',
                            style: new TextStyle(
                                fontSize: 19.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w900,
                                color: Colors.redAccent
                            ),
                          ),
                          onPressed: ( ) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ( context ) => LoginPage()),
                            );
                          },
                        ),

                      ),
                      SizedBox(

                        width: 200,
                        height: 50,
                        child: RaisedButton(
                          child: Text('Log in as an admin',
                            style: new TextStyle(
                                fontSize: 19.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w900,
                                color: Colors.redAccent
                            ),
                          ),
                          onPressed: ( ) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ( context ) => MyHomePage6()),
                            );
                          },
                        ),

                      ),


                    ]

                ),




                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text('DONT HAVE ONE?', style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,

                    ),),



                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Padding(

                        padding: const EdgeInsets.only(bottom: 10, left: 0, right: 0),

                        child: SizedBox(


                          width: 10,
                          height: 50,


                        ),

                      ),
                    ),

                    InkWell(
                      onTap: navigateTomysignup,
                      child: Text('Create an account',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,

                        ),

                      ),
                    ),




                  ],




                ),






              ],
            ),
          )

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