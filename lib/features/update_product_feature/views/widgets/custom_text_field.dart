import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.onChange,
    this.keyboardType
  });
  TextInputType? keyboardType;
  final Function(String) onChange;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      onChanged: onChange,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kColor,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          )),
      style: const TextStyle(
        color: kColor,
      ),
    );
  }
}
