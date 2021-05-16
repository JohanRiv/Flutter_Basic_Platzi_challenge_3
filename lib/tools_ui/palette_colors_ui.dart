import 'package:flutter/material.dart';

class PaletteColors {
  final colorsPrimary = {
    'primaryPrincipal': Color(0xFF29b6f6),
    'primaryLight': Color(0xFF73e8ff),
    'primaryDart': Color(0xFF0086c3),
    'primaryTextDark': Color(0xFF000000),
    'primaryTextMid': Color(0xFF9e9e9e),
    'primaryTextLight': Color(0xFFFFFFFF),
  };
  final colorsSecondary = {
    'secondaryPrincipal': Color(0xFF2196f3),
    'secondaryLight': Color(0xFF6ec6ff),
    'secondaryDart': Color(0xFF0069c0),
    'secondaryTextDart': Color(0xFF000000),
    'secondaryTextMid': Color(0xFF9e9e9e),
    'secondaryTextLight': Color(0xFFFFFFFF),
  };

  getColorsPrimary() {
    return colorsPrimary;
  }

  getColorsSecondary() {
    return colorsSecondary;
  }
}
