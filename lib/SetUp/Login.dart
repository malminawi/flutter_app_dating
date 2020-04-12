import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_dating/UserBottomNavigator.dart';
import 'package:flutter_app_dating/PolicyPagee/POLICYPAGE.dart';
import 'package:flutter_app_dating/showdata/Main.dart';
import 'package:flutter_app_dating/signup.dart';
import 'package:flutter_app_dating/storage/save.dart';
import 'package:flutter/services.dart' ;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  // final _formkey = GlobalKey<FormState>();
  //final _Scaffold = GlobalKey<FormState>();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


    Animation animation;
    AnimationController anmationController;
    @override


  @override
  Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,     ]);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text('SIGN IN')
      ),
      body: Form(
        key: _formkey,

        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            TextFormField(
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please enter a valid email';
                } else {
                  return null;
                } // it's not nesseacry to put it in if because there is a return

              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(labelText: 'Email'),

            ),

            TextFormField(
              validator: (input) {
                if (input.length < 6) {
                  return 'Please enter you r 6 or over passport';
                }

                return null;

                //return(input);
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(labelText: 'Enter you password'),
              obscureText: true,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
                  signIn();
                },
                child: Text('Submit'),
              ),
            ),


Row(

  mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[

  Text('New?', style: TextStyle(
  fontSize: 25,
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
    onTap: navigateTomyapp1,
    child: Text('Create an account',
    style: TextStyle(
      color: Colors.blue,
        fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,

    ),

    ),
  ),


],



/*
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
        Text('New?', style: TextStyle(fontFamily: 'Montserrat'),),

    SizedBox(width: 5.0,),
    InkWell(
      onTap: (){


      },
    )


  ],
  */

),

            Align(
              alignment: Alignment.bottomCenter,

              child: IconButton(

disabledColor: Colors.lightBlueAccent,
                icon: Icon(Icons.local_florist),
                iconSize: 300,
                onPressed: (){

                },

              ),




            ),





          ],
        ),
      ),
      ),
    );
  }

  @override


  Future<void> signIn() async {
//    final formState = _formkey.currentState;

    final isValid = _formkey.currentState.validate();


    if (!isValid) {
      print("error in form");
    }
    _formkey.currentState.save();



//       */

      try{
          await  FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);

        Navigator.push(context, MaterialPageRoute(builder: (context) => Home5()));

      }catch(e){
        print(e.message);
      }
    }


  void navigateTomyapp1(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_Up(), fullscreenDialog: true));

  }



  }







