
import 'package:flutter/material.dart';

class AppTheme {

  ThemeData tema(){
    return ThemeData(
      useMaterial3: false,
      colorSchemeSeed: Colors.green,
      brightness: Brightness.light
    );
  }
}