import 'package:flutter/material.dart';

class  Newprovider extends ChangeNotifier {
  

  var items = ['burger', 'juice', 'biriyani'];
  String dropdownvalue = 'burger';
  String hintexxt = '';

  dropdosnfun() {
    hintexxt = dropdownvalue;
    notifyListeners();
  }
}