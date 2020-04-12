import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dating/FirstPageFiles/apperance.dart';
import 'package:flutter_app_dating/SetUp/Login.dart';
import 'package:flutter_app_dating/showdata/myData.dart';
import 'package:flutter_app_dating/signup.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();



}

/*

class TextFieldValue extends StatefulWidget {
  @override
  _OnBoardingState createState() {
    return new _OnBoardingState();
  }
}

*/

class _OnBoardingState extends State<OnBoarding> {


  List<PageModel> pages = List<PageModel>();
/*
  TextEditingController _textFieldController = TextEditingController();
  String _displayValue = "";

  _onSubmitted(String value) {
    setState(() => _displayValue = value);
  }

*/
  void _addPages( ) {
    pages.add(PageModel('Welcome',
        ' PLEASE SCROLL TO THE RIGHT TO GET MORE INFO BOUT WHAT is THIS APP',
        Icons.face, 'images/bg.png'));
    pages.add(PageModel('Great!',
        'this app will allow you and ask you some questions to create a profile',
        Icons.add_a_photo, 'images/bg2.png'));
    pages.add(
        PageModel(
            'the dating app', 'ALL you have to do is answer the questions ',
            Icons.ac_unit, 'images/bg3.png'));
    pages.add(PageModel(
        'You got it  ', 'You got it! now lets get started', Icons.local_florist,
        'images/bg6.png'));
  }




  @override
  Widget build(BuildContext context) {
    _addPages();


    return Scaffold(


        body: Stack(
          children: <Widget>[
            PageView.builder(
              itemBuilder: (context , index){
                return Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: ExactAssetImage(
                          pages[ index].image,

                        ),
                          fit: BoxFit.cover, ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(

                          child: Icon( pages[ index ].icon,


                            size: 160, color: Colors.white,),
                          offset: Offset(0, -100),


                        ),




                        Text( pages[ index ].title

                          , style: TextStyle(color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold

                          ) ,
                          textAlign: TextAlign.center,


                        ),


                        Padding(
                          padding: const EdgeInsets.only(left: 48, right: 48, top: 18),
                          child: Text(pages[ index].description,
                            style: TextStyle(color: Colors.white,
                                fontSize: 20) ,
                            textAlign: TextAlign.center,
                          ),
                        ),


                      ],
                    ),

                  ],
                );
              },
              itemCount: pages.length,
            ),



            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 100, right: 100),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,

                  child: RaisedButton(
                  color: Colors.red,
                    child: Text('GO BACK!'),
                    onPressed: () {
    Navigator.pop(context);



  },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.greenAccent, width: 4)
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );


  }
}


