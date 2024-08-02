import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.onChanged,
    required this.hintText,
    this.keyboardType,
  });
  final Function(String) onChanged;
  final String hintText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        keyboardType: keyboardType,
        validator: (value) {
          if ((value == null || value.isEmpty || value.trim().isEmpty)) {
            return "This field is required";
          }
          return null;
        },
        textAlignVertical: TextAlignVertical.center,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: kColor,
              width: 4,
            ),
          ),
        ),
      ),
    );
  }
}
