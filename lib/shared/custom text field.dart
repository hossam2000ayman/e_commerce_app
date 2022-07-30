// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, must_be_immutable

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  TextInputType textInputTypee;
  bool isPassword;
  String hinttext;

  MyTextField({
    required this.textInputTypee,
    required this.hinttext,
    required this.isPassword
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputTypee,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        // ignore: prefer_const_constructors
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(8.0),
      ),
    );
  }
}
