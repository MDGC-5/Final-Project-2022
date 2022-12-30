import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyConfig {
  // All Constant Value Here
  final double myWidth = 16.0;
  final double myHeight = 16.0;
  final double myExtraSmallFontSize = 10.0;
  final double mySmallFontSize = 12.0;
  final double myFontSize = 14.0;
  final double myMediumFontSize = 16.0;
  final double myLargeFontSize = 18.0;
  final double myExtraLargeFontSize = 20.0;
  final double myIconSize = 40.0;
  final double myMargin = 20;
  final double myRadius = 10;
  final double myElevation = 1.0;
  final Color myButtonbackgroundColor = Colors.amber;
  final Color myButtonTextColor = Colors.black;



  
  bool toast({required String msg}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
    return true;
  }

// All Validation here

  bool nameValidator({required String value}) {
    String pattern = '[a-zA-Z]';
    RegExp regExp = new RegExp(pattern);
    if (!regExp.hasMatch(value) || value.length < 3) {
      return false;
    } else
      return true;
  }

  bool mobileValidator({required String value}) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (!regExp.hasMatch(value) || value.length != 10) {
      return false;
    } else
      return true;
  } //mobile Validator

  bool passwordValidator({required String value}) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      return false;
    else
      return true;
  }

  bool emailValidator({required String value}) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());

    // if (value.isEmpty) {
    //   toast(msg: "Please Enter an Email");
    // } else
    if (!regex.hasMatch(value))
      return false;
    else
      return true;
  }

  requiredValidator({required String value, required String msg}) {
    if (value.isEmpty) {
      toast(msg: msg);
    }
  }

  bool zipValidator({required String value}) {
    if (value.isEmpty || value.length != 6) {
      return false;
    }
    return true;
  }

  
}
