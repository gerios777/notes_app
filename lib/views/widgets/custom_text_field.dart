import 'package:flutter/material.dart';
import 'package:note_app/conestant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimeryColor,
      decoration: InputDecoration(
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(kPrimeryColor),
        hintText: "Title",
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
