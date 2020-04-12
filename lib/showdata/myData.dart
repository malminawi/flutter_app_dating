
import 'package:flutter/cupertino.dart';

class myData {

  String name, message, gender, DOB,  radioValue, address, city, state, insure, zip_code, region;
  double sliderValue;
  double sliderValue1;
  //bool type;



  myData(this.name, this.message, this.gender, this.DOB, this.radioValue, this.address, this.city, this.state,
      this.insure, this.sliderValue, this.zip_code, this.sliderValue1, this.region);

}



class PageModel {
  String _title;
  String _description;
 IconData _icon;
  String _image;

  PageModel(this._title, this._description, this._icon, this._image);


  String get image => _image;
  IconData get icon => _icon;
  String get description => _description;
  String get title => _title;

}

