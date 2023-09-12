import 'package:flutter/material.dart';

BoxDecoration menuTextCustomDecoration() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.green], // Gradient colors
    ),
    borderRadius: BorderRadius.circular(20.0), // Border radius
    border: Border.all(
      color: Colors.transparent, // Transparent border color
      width: 2.0, // Border width
    ),
  );
}

InputDecoration educationSectionTexFormField(String eduName) {
  return InputDecoration(
    hintText: eduName,
    filled: true,
    fillColor: Colors.white, // White background color
    contentPadding: EdgeInsets.all(16.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0), // Border radius
      borderSide: BorderSide.none, // Remove border
    ),
  );
}

Padding customEduHeaderTitle(String titleStr) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
    child: Text(
      titleStr,
      style: const TextStyle(fontSize: 18.0),
    ),
  );
}