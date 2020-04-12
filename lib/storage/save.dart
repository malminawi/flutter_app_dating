

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Notes extends StatefulWidget {
  @override
  NotesState createState() => NotesState();
}

class NotesState extends State<Notes> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('ADD NOTES. ALL ADMINS WILL SEE IT ', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 17, decorationStyle: TextDecorationStyle.dashed,

        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
          child:SingleChildScrollView(

          child: Column(
          children: <Widget>[
            TextField(
              decoration: new InputDecoration(hintText: 'TYPE SOME STUFF '),
              controller: _controller,
            ),
            RaisedButton(
              color: Colors.red,
              child: Text('Save'),
              onPressed: _save,
            ),
            SizedBox(height: 40.0),
            RaisedButton(
              color: Colors.red,

              child: Text('Read'),
              onPressed: _read,
            ),
            Text(_whatWasRead),
          ],
        ),
      )
      ),
    );
  }

  // Must add dependency in pubspec.yaml !!!!!!!!

  final prefsKey = 'key';
  String _whatWasRead = "";

  _save() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(prefsKey, '$_whatWasRead\n${_controller.text}');
    _controller.text = "";
  }

  _read() async {
    final prefs = await SharedPreferences.getInstance();
    _whatWasRead = prefs.getString(prefsKey) ?? "";
    setState(() {});
  }
}


