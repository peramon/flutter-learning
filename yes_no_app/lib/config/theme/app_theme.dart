import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4); // Example custom color

const List<Color> _colorTheme = [
  _customColor,
  Colors.grey,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < _colorTheme.length,
        'Index must be between 0 and ${_colorTheme.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
