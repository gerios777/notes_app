import 'package:flutter/material.dart';
import 'package:note_app/conestant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1, this.onsaved,
  });
   final void Function(String?)? onsaved;
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      onSaved: onsaved,
      maxLines: maxLines,
      cursorColor: kPrimeryColor,
      decoration: InputDecoration(
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(kPrimeryColor),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18, color: kPrimeryColor),
      ),
    );
  }

  OutlineInputBorder _buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: color ?? Colors.white, width: 2),
    );
  }
}
