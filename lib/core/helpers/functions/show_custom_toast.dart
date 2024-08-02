import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_app/constants.dart';

Future<bool?> showCustomToast(msg) {
  return Fluttertoast.showToast(
    // webBgColor: primaryColor,
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: kColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
