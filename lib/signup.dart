import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dating/FirstPageFiles/apperance.dart';
import 'package:flutter_app_dating/PolicyPagee/POLICYPAGE.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';



class Sign_Up extends StatefulWidget {


  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {





  String _email, _password;



  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();



  TextEditingController _textFieldController1 = TextEditingController();
  String _displayValue1 = "";

  _onSubmitted1( String value ) {
    setState(( ) => _displayValue1 = value);
  }
String name;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(

        backgroundColor: Colors.greenAccent,
          title: Text('SIGN UP',),
          actions: <Widget>[


      IconButton(
      onPressed: ( ) {
        _HELP(context);
    },
      icon: Icon(Icons.info),
    )

    ],
      ),

      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,

              child: IconButton(

                disabledColor: Colors.lightBlueAccent,
                icon: Icon(Icons.face),
                iconSize: 300,
                onPressed: (){

                },

              ),




            ),




            TextFormField(
              validator: (input) {
                if (input.isEmpty) {
                  return 'ENTER A VALID EMAIL';
                } else {
                  return null;
                } // it's not nesseacry to put it in if because there is a return

              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(labelText: 'Enter  a valid Email'),
            ),

            TextFormField(
              validator: (input) {
                if (input.length < 6  ) {
                  return 'Password must be over 6 charecters';
                }

                return null;

                //return(input);
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(labelText: 'Enter Password more than 6 cheracters'),
              obscureText: true,
            ),



            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 15),
              child: RaisedButton(

                onPressed: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => signIn));
                  return showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('YOU MUST AGREE OUR TERMS AND CONDITIONS'),
                        content: const Text('I agree I have read DatingApp policy and I wish to proceesd' '\n Click Accept or go back to the main page'),

                        actions: <Widget>[
                          FlatButton(
                            child: Text('Agree'),
                            onPressed: () {
                              signIn();
                            },
                          ),


                          FlatButton(
                            child: Text('Go back '),
                            onPressed: () {
                              Navigator.pop(context);                            },
                          ),




                        ],
                      );
                    },
                  );          },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.pinkAccent, width: 4)
                ),
                child: Text('Sign Up', style: TextStyle(fontSize: 25),),
              ),
            ),


/*
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 18),
              child: RaisedButton(

                onPressed: () {
           //  Navigator.push(context, MaterialPageRoute(builder: (context) => signIn));
                  signIn();           },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.pinkAccent, width: 4)
                ),
                child: Text('sign up', style: TextStyle(fontSize: 25),),
              ),
            ),
*/
            Padding(
              padding: const EdgeInsets.only(left: 120, right: 130, top:30),
              child: RaisedButton(

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                           },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.red)
                ),
                child: Text('Terms and Conditions'),
              ),
            ),




























//
          ],
        ),
      ),

      ),
    );

  }

 // @override


  Future<void> signIn() async {

//    final formState = _formkey.currentState;

    final isValid = _formkey.currentState.validate();

    if (!isValid) {
      print("error in form");
    }
    _formkey.currentState.save();



//       */

    try{
     FirebaseUser user =await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
     user.sendEmailVerification();
//Navigator.of(context).pop();
     //Navigator.push(context, MaterialPageRoute(builder: (context) => _ackAlert(context)));
_ackAlert(context);
    }catch(e){
      print(e.message);
    }
  }






}


Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('CONGRATULATIONS! Your account has been created sucssesfully ^o^'),
        content: const Text('Please check your email and verify your account.' '\n Click SIGN IN After you Verify it.'),

        actions: <Widget>[
      FlatButton(
      child: Text('SIGN IN '),
      onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      ),


          FlatButton(
            child: Text('Main Page '),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => firstPage()));
            },
          ),




        ],
      );
    },
  );
}








Future<void> _HELP(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Need Help??'),
        content: const Text('Please Contact us.' '\n\n Email: malminawi@drew.edu' '\n Phone #: 11111111111'),



      );
    },
  );
}




