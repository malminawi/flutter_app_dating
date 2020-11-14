import 'package:flutter/material.dart';

class ProfileTwoPage extends StatelessWidget {

  static final String path = "lib/src/pages/profile/profile2.dart";
  final List<Map> collections = [
    {
      "title":"NYC trip",
    },
    {
      "title":"Black friday",
    },

    {
      "title":"Drew University",
    },

    {
      "title":"Dating app",
    },

  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back to Profiles"),
        backgroundColor: Colors.red,
        elevation: 0,
      ),

      body: Stack(
        children: <Widget>[
          Container(
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.tealAccent,
            ),
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: _mainListBuilder,
          ),
        ],
      ),
    );

  }



  Widget _mainListBuilder(BuildContext context, int index) {
    if(index==0) return _buildHeader(context);
    if(index==1) return _buildSectionHeader(context);
    if(index==2) return _buildCollectionsRow();
    if(index==3) return Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
        child: Text("More pictures of me ",
            style: Theme.of(context).textTheme.title
        )
    );
    return _buildListItem();
  }
  Widget _buildListItem() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset('images/bg.png'),
          ),

          ],
        ),
      ),
    );

  }
  Container _buildSectionHeader(BuildContext context) {
    return Container(
      color: Colors.white,
       child:   Text("My albums", style: Theme.of(context).textTheme.title,),
    );

  }
  Container _buildCollectionsRow() {
    return Container(
      color: Colors.white,
      height: 200.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: collections.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              width: 150.0,
              height: 200.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset('images/computer.jpg'),
                      )
                  ),
                  SizedBox(height: 5.0,),
                  Text(collections[index]['title'], style: Theme.of(context).textTheme.subhead.merge(TextStyle(color: Colors.red)))
                ],
              )
          );
        },
      ),
    );
  }

  Container _buildHeader(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      height: 240.0,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0, bottom: 10.0),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 5.0,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50.0,),
                  Text("Mahmoud alminawi ", style: Theme.of(context).textTheme.title,),
                  SizedBox(height: 8.0,),
                  Text("I go to Drew university in Madison New Jersey,\n I like my school "),
                  SizedBox(height: 16.0,),
                  Container(
                    height: 40.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: Text("5",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("POSTS".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12.0) ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text("657",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Followers".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12.0) ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text("95",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Following".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12.0) ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                elevation: 5.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 40.0,
                  child: Image.asset('images/f.jpg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }

}