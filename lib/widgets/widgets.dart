import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide( color: Colors.black)
  ),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide( color: Colors.black)
  ),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide( color: Colors.red)
  ),
);