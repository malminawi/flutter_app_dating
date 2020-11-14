import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_dating/showdata/myData.dart';
import 'package:flutter_app_dating/ADminMainPage.dart';

class ShowDataPage extends StatefulWidget {
  @override
  _ShowDataPageState createState() => _ShowDataPageState();
}
class _ShowDataPageState extends State<ShowDataPage> {
  List<myData> allData = [];

  @override
  void initState() {

    DatabaseReference ref = FirebaseDatabase.instance.reference();

    ref.child('node-name').once().then((DataSnapshot snap) {

      var keys = snap.value.keys;

      var data = snap.value;

      allData.clear();

      for (var key in keys) {

        myData d = new myData(

          data[key]['name'],

          data[key]['message'],
          data[key]['age'],


          data[key]['gender'],
          data[key] ['radio'],
          data[key]['address'],
          data[key] ['city'],
          data[key] ['state'],
          data[key] ['insure'],
          data[key] ['sliderValue'],

          data[key] ['zip_code'],

          data[key] ['sliderValue1'],
          data[key] ['region'],






        );

        allData.add(d);

      }

      setState(() {

        print('Length : ${allData.length}');

      });

    });

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: new AppBar(

        title: new Text('Firebasdde Data'),

      ),

      body: new Container(

          child: allData.length == 0

              ? new Text(' No Data is Available')

              : new ListView.builder(

            itemCount: allData.length,

            itemBuilder: (_, index) {


              return UI(






                allData[index].name,

                allData[index].gender,

                allData[index].message,
                allData[index].DOB,
                allData[index].radioValue,
                allData[index].address,
                allData[index].city,
                allData[index].state,
                allData[index].insure,
                allData[index].sliderValue,
                allData[index].zip_code,
                allData[index].sliderValue1,

                allData[index].region,



              );



            },

          )),

    );

  }



  Widget UI(String name, String age, String message, String gender, String radioValue, String address, String city,
      String state , String insure, double sliderValue, String zip_code, double sliderValue1,  String region ) {

    return new Card(

      elevation: 10.0,

      child: new Container(

        padding: new EdgeInsets.all(20.0),

        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            RaisedButton(
            onPressed: (){

              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SendToAdmin('$name', '$age', '$gender', '$radioValue', '$address', '$city', '$message',
                  '$state', '$sliderValue', '$zip_code', '$sliderValue1', '$insure', '$region')));              },
        child: Text('click to see full information'),
      ),

             new Text('Name : $name',style: Theme.of(context).textTheme.title,),

            new Text('gender : $gender'),

            new Text('Age : $age'),
            ///new Text('radio : $radioValue'),
           // new Text('Address',style: Theme.of(context).textTheme.title,),

           //// new Text('Street  : $address'),
           // new Text('city : $city'),

          //  new Text('Message : $message'),
           // new Text('state : $state'),
           //Text(" " + sliderValue.toStringAsFixed(2)),
           // new Text('height : $sliderValue' ),
           // new Text('zip code : $zip_code' ),
           // new Text('weight : $sliderValue1' ),
          ///  new Text('insure : $insure' ),
          ////  new Text('region : $region' ),


          ],

        ),

      ),


    );


    }


  }
class SendToAdmin extends StatelessWidget {
  final List<ShowDataPage> dd = [
    ShowDataPage()
  ];

  final String name, age, gender, radioValue, address, city, message, state, slider_value, zip_code, slider_value1, insure, region;

  SendToAdmin(this.name, this.age, this.gender, this.radioValue,this.address,this.city, this.message, this.state, this.slider_value, this.zip_code
      ,this.slider_value1, this.insure, this.region);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('info for  $name'),
      ),
      body: SingleChildScrollView(

            child: Container(
              height: 800,
              color: Colors.grey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Name :  $name'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'date of Birth :  $age'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Gender :  $gender'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Users Bio :  $message'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'address: Street name $address,\n$city $state, \n $zip_code USA.'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Weight :  $slider_value1'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Height :  ${slider_value}'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Body Tupe :  $insure'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Ethincity :  $region'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Status :  $radioValue'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),



                ],
              )

)


      ),
    );
  }
}



class Profile extends StatelessWidget {
  final List<ShowDataPage> dd = [
    ShowDataPage()
  ];

  final String name, age, gender, radioValue, address, city, message, state, slider_value, zip_code, slider_value1, insure, region;

  Profile(this.name, this.age, this.gender, this.radioValue,this.address,this.city, this.message, this.state, this.slider_value, this.zip_code
      ,this.slider_value1, this.insure, this.region);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name,  Here is your info '),
      ),
      body: SingleChildScrollView(

          child: Container(
              height: 800,
              color: Colors.grey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Name :  $name'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'date of Birth :  $age'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Gender :  $gender'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Users Bio :  $message'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'address: Street name $address,\n$city $state, \n $zip_code USA.'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Weight :  $slider_value1'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Height :  ${slider_value}'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Body Tupe :  $insure'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Ethincity :  $region'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text( 'Status :  $radioValue'

                        , style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),



                ],
              )

          )


      ),
    );
  }
}































// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.pink,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, size: 70),
              title: Text('Heart Shaker', style: TextStyle(color: Colors.white)),
              subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
            ),

          ],
        ),
      ),
    );
  }
}



//class SendToAdmin extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('info for '),
//      ),
//      body: SingleChildScrollView(
//
//          child: Container(
//              height: 100,
//              color: Colors.grey,
//
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Text( 'Status :  '
//
//                        , style: TextStyle(color: Colors.white,
//                            fontSize: 20,
//                            fontWeight: FontWeight.bold
//                        ) ,
//                        textAlign: TextAlign.center,
//                      ),
//
//
//                    ],
//                  ),
//
//
//
//                ],
//              )
//
//          )
//
//
//      ),
//    );
//  }
//}









