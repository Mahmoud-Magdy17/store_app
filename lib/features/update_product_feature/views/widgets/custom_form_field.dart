import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.onChange,
  });
  final Function(String) onChange;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kColor,
            ),
          ),
          focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(
              color: kColor,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kColor,
          )),
      style: const TextStyle(
        color: kColor,
      ),
    );
  }
}
