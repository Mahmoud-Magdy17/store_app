import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.onChange,
  });
  final Color kColor = Colors.black;
  Function(String) onChange;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kColor,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: kColor,
          )),
      style: TextStyle(
        color: kColor,
      ),
    );
  }
}
