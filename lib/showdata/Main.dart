import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_app_dating/FirstPageFiles/apperance.dart';
import 'package:flutter_app_dating/showdata/ShowDataPage.dart';
import 'package:flutter_app_dating/storage/save.dart';
import 'package:firebase_auth/firebase_auth.dart';







class MyApp1 extends StatefulWidget {

  @override

  _MyApp1State createState() => _MyApp1State();

}



class _MyApp1State extends State<MyApp1> {

  GlobalKey<FormState> _key = new GlobalKey();

  bool _autovalidate = false;

  String name, gender, message, DOB, address, city, state,  insure, zip_code, region;

  List<DropdownMenuItem<String>> items = [

    new DropdownMenuItem(

      child: new Text('Male'),

      value: 'male',

    ),

    new DropdownMenuItem(

      child: new Text('Female'),

      value: 'female',

    ),
    new DropdownMenuItem(

      child: new Text('Prefer Not to answer'),

      value: 'Prefer not to answer',

    ),
    new DropdownMenuItem(

      child: new Text('Not Known'),

      value: 'Not known ',

    ),


  ];


  List<DropdownMenuItem<String>> states = [
    new DropdownMenuItem(

      child: new Text('Arizona'),

      value: 'Arizona',

    ),
    new DropdownMenuItem(

      child: new Text('California'),

      value: 'California',

    ),

    new DropdownMenuItem(

      child: new Text('New Jersey'),

      value: 'New Jersey',

    ),

    new DropdownMenuItem(

      child: new Text('New York'),

      value: 'New Yourk',

    ),
    new DropdownMenuItem(

      child: new Text('Pensylvania'),

      value: 'Pensylvania',

    ),


    new DropdownMenuItem(

      child: new Text('Washington'),

      value: 'Washington',

    ),


  ];


  List<DropdownMenuItem<String>> Region = [

    new DropdownMenuItem(

      child: new Text('white'),

      value: 'white',

    ),

    new DropdownMenuItem(

      child: new Text('black'),

      value: 'black',

    ),
    new DropdownMenuItem(

      child: new Text('middle east'),

      value: 'middle east',

    ),
    new DropdownMenuItem(

      child: new Text('latin'),

      value: 'latin ',

    ),
    new DropdownMenuItem(

      child: new Text('Prefer not to answer'),

      value: 'prefer not to answer ',

    ),


  ];

  var radioValue;

  void _refreshRadio(var newValue) {
    setState(() {
      radioValue = newValue;
    });
  }



  double  sliderValue = 1;

  void _refreshSlider( double newValue) {
    setState(() {
      sliderValue = newValue;
    });
  }

  double  sliderValue1 = 30;

  void _refreshSlider1( double newValue1) {
    setState(() {
      sliderValue1 = newValue1;
    });
  }


  bool type = true;





 // bool type = false;




  @override

  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        //leading: Icon(Icons.info),
        title: Text('Welcome Again! \n Complete your data'),
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


      body: new SingleChildScrollView(

        child: Column(

          children: <Widget>[

            Container(
              width:500 ,
              height: 40,
              color: Colors.grey,
              child:    Padding(
                padding: const EdgeInsets.only(top: 10, right: 0, left: 10),
                child: Text( 'Personl Information'

                  , style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold

                  ) ,
                  textAlign: TextAlign.center,


                ),
              ),


            ),

         new Container(



          padding: new EdgeInsets.only(top: 1, left: 5, right: 10),

          child: new Form(

            key: _key,

            autovalidate: _autovalidate,

            child: FormUI(),

          ),

        ),

          ],

      ),

      ),

    );

  }



  Widget FormUI() {


    return new Column(


      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        new TextFormField(


          decoration: new InputDecoration(hintText: 'Full Name *  ', hintStyle: TextStyle(color: Colors.redAccent)),

          onSaved: (val) {

            name = val;

          },

          validator: validateName,

          maxLines: 1,

          maxLength: 50,

        ),



        new Row(

          children: <Widget>[



            new Flexible(

              child: new TextFormField(

                decoration: new InputDecoration(hintText: 'Date Of Birth *', hintStyle: TextStyle(color: Colors.redAccent)),

                validator: validateAge,

                onSaved: (val) {

                  DOB = val;

                },

                maxLength: 10,

              ),

            ),

            new SizedBox(width: 10.0),


            new DropdownButtonHideUnderline(

                child: new DropdownButton(


                  items: items,

                  hint: new Text('Gender *', style: TextStyle(color: Colors.redAccent)),

                  value: gender,


                  onChanged: (String val) {

                    setState(() {

                      gender = val;

                    });

                  },

                ))

          ],

        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 300),
          child: Text( ''

            , style: TextStyle(color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold

            ) ,
            textAlign: TextAlign.center,


          ),
        ),


        new TextFormField(

          decoration: new InputDecoration(hintText: 'About you.  This will be your Bio'),

          onSaved: (val) {

            message = val;

          },

          validator: validateMessage,

          maxLines: 10,

          maxLength: 500,

        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Container(
              width:600 ,
height: 40,
color: Colors.grey,
              child:    Padding(
                padding: const EdgeInsets.only(top: 10, right: 0, left: 10),
                child: Text( 'Address'

                  , style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold

                  ) ,
                  textAlign: TextAlign.center,


                ),
              ),


            ),




          ],
        ),


        new TextFormField(


          decoration: new InputDecoration(hintText: 'Full address *', hintStyle: TextStyle(color: Colors.redAccent)),

          onSaved: (val) {

            address = val;

          },

          validator: validateName,

          maxLines: 1,

          maxLength: 50,

        ),


        new Row(

          children: <Widget>[



            new Flexible(

              child: new TextFormField(

                decoration: new InputDecoration(hintText: 'city *', hintStyle: TextStyle(color: Colors.redAccent)),

                validator: validateAge,

                onSaved: (val) {

                  city = val;

                },

                maxLength: 20,

              ),

            ),

            new SizedBox(width: 10.0),

            new DropdownButtonHideUnderline(

                child: new DropdownButton(

                  items: states,

                  hint: new Text('State *', style: TextStyle(color: Colors.redAccent)),

                  value: state,

                  onChanged: (String val) {

                    setState(() {

                      state = val;

                    });

                  },

                ))

          ],

        ),
        new TextFormField(

          decoration: new InputDecoration(hintText: 'Your 5 digit zip code *', hintStyle: TextStyle(color: Colors.redAccent)),

          validator: validateZip,

          onSaved: (val) {

            zip_code = val;

          },

          maxLength: 5,

        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Container(
              width:600 ,
              height: 40,
              color: Colors.grey,
              child:    Padding(
                padding: const EdgeInsets.only(top: 10, right: 0, left: 10),
                child: Text( 'Info displayed on your profile'

                  , style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold

                  ) ,
                  textAlign: TextAlign.center,


                ),
              ),


            ),




          ],
        ),


        Padding(
          padding: const EdgeInsets.only(top: 30, right: 130),
          child: Text( 'Slide untill you get your Height!   '

            , style: TextStyle(color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal

            ) ,
            textAlign: TextAlign.center,


          ),
        ),
        Text(" " + sliderValue.toStringAsFixed(2)),                                        //keyy
        Slider(
          value: sliderValue,
          onChanged: _refreshSlider,
          min: 1,
          max: 8,
        ),



        Padding(
          padding: const EdgeInsets.only(top: 30, right: 130),
          child: Text( 'Slide untill you get your weight!   '

            , style: TextStyle(color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal

            ) ,
            textAlign: TextAlign.center,


          ),
        ),
        Text(" " + sliderValue1.toStringAsFixed(2)),                                        //keyy
        Slider(
          value: sliderValue1,
          onChanged: _refreshSlider1,
          min: 30,
          max: 300,
        ),
        Text(''),






        Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('What is your body type', style: TextStyle(
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,

            ),),



            Align(
              alignment: Alignment.bottomCenter,

              child: Padding(

                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 15),

                child: SizedBox(


                  width: 10,
                  height: 50,


                ),

              ),
            ),

            InkWell(
              onTap: (){
                showModalBottomSheet(context: context,
                    builder: (context){
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.fiber_manual_record),

                            title: Text('Do Not Show',style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,

                            ),),
                            onTap: (){
                              insure = '';
                              Navigator.of(context).pop();

                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.fiber_manual_record),

                            title: Text('slim',style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,

                            ),),
                            onTap: (){
                              insure = 'slim';
                              Navigator.of(context).pop();

                            },
                          ),

                          ListTile(
                            leading: Icon(Icons.fiber_manual_record),

                            title: Text('Average',style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,

                            ),),
                            onTap: (){
                              insure = 'Average';
                              Navigator.of(context).pop();

                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.fiber_manual_record),

                            title: Text('Muscular',style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,

                            ),),
                            onTap: (){
                              insure = 'Muscular';
                              Navigator.of(context).pop();

                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.fiber_manual_record),

                            title: Text('Large',style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,

                            ),),
                            onTap: (){
                              insure = 'Large';
                              Navigator.of(context).pop();

                            },
                          ),


                        ],

                      );

                    }


                );
              },
              child: Text('Click here to Pick',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,

                ),

              ),
            ),

          ],




        ),



        Padding(
          padding: const EdgeInsets.only(left: 23, top: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('What is Your Ethnicity', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[


                        DropdownButtonHideUnderline(


                            child: new DropdownButton(


iconDisabledColor: Colors.red,
                              iconEnabledColor: Colors.blue, iconSize: 50,icon: Icon(Icons.arrow_drop_down),
                              items: Region,


                              value: region,


                              onChanged: (String val) {

                                setState(() {

                                  region = val;

                                });

                              },
                              hint: new Text('Select One', style: TextStyle(color: Colors.blue)),


                            )),



                      ]

                  ),
                ),






              ]

          ),
        ),




        Padding(
          padding: const EdgeInsets.only( top: 35,left: 0 , right: 180),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Relationshipi Status:   '  , style: TextStyle(fontSize: 18),),

              ]

          ),
        ),
        Padding(
          padding: const EdgeInsets.only( top: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('$radioValue '  , style: TextStyle(fontSize: 18),),

              ]

          ),
        ),


        Padding(
          padding: const EdgeInsets.only( top: 35,left: 40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        value: '', groupValue: radioValue, onChanged: _refreshRadio, ),
                      Text('Do not show', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ]

                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      Radio(
                          value: 'Dating', groupValue: radioValue, onChanged: _refreshRadio),
                      Text('Dating', style: TextStyle(fontSize: 20, )),
                    ]

                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                          value: ' Married', groupValue: radioValue, onChanged: _refreshRadio),
                      Text('Married', style: TextStyle(fontSize: 20, )),

                    ]

                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(value: ' Engaged', groupValue: radioValue, onChanged: _refreshRadio),
                      Text(' Engaged', style: TextStyle(fontSize: 20, )),
                    ]

                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(value: ' Single', groupValue: radioValue, onChanged: _refreshRadio),
                      Text(' Single', style: TextStyle(fontSize: 20, )),
                    ]

                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(value: ' open relationship', groupValue: radioValue, onChanged: _refreshRadio),
                      Text(' Open Relationship', style: TextStyle(fontSize: 20, )),
                    ]

                ),

              ]

          ),
        ),




        Text('______________________________________________________'),


        new RaisedButton(

          onPressed: () {

            Navigator.push(context,

                MaterialPageRoute(builder: (context) => new Profile('$name', '$DOB', '$gender', '$radioValue', '$address', '$city', '$message',
                    '$state', '$sliderValue', '$zip_code', '$sliderValue1', '$insure', '$region')));

          },

          child: new Text('CLICK HERE TO SEE YOUR INPUT'),

        ),



        //Text('$radioValue' ),


         RaisedButton(

          onPressed: _sendToServer,

          child: new Text('Save Data'),

        ),

        new SizedBox(height: 20.0),



        /*

        new RaisedButton(

          onPressed: () {

            Navigator.push(context,

                MaterialPageRoute(builder: (context) => new ShowDataPage()));

          },

          child: new Text('Show Data'),

        ),

        */

      ],

    );

  }



  _sendToServer() {

    if (_key.currentState.validate()) {

      _key.currentState.save();

      DatabaseReference ref = FirebaseDatabase.instance.reference();

      var data = {

        "age": DOB,

        "gender": gender,

        "message": message,
        "name": name,
        "radio" : radioValue,
        "address": address,
        "city" : city,
        "state" : state,
        "insure" : insure,
        "sliderValue" : sliderValue,
        "sliderValue1" : sliderValue1,

        "zip_code" : zip_code,
        "region" : region,




      };

      ref.child('node-name').push().set(data).then((v) {

        _key.currentState.reset();

      });
      _ackAlert(context);


    } else {

      setState(() {

        _autovalidate = true;

      });

    }

  }



  String validateName(String val) {

    return val.length == 0 ? "Enter Name " : null;

  }



  String validateMessage(String val) {

    return val.length == 0 ? "Enter bio " : null;

  }


  String validateAge(String val) {

    return val.length == 0 ? "Enter Date of birth " : null;

  }
  String validateaddress(String val) {

    return val.length == 0 ? "Enter address " : null;

  }
  String validatecity(String val) {

    return val.length == 0 ? "Enter city " : null;

  }
  String validateZip(String val) {

    return val.length == 0 ? "Enter zip " : null;

  }
  String validateGender(String val) {

    return val.length == 0 ? "Enter gender " : null;

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
            child: Text('go back '),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
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












