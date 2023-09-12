import 'package:flutter/material.dart';

InputDecoration customInputDecoration(String strName) {
  return InputDecoration(
    labelText: strName,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black), // Set border color here
    ),
  );
}