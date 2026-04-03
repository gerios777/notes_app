import 'package:flutter/material.dart';
import 'package:note_app/conestant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines =1 ,
  });

  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
