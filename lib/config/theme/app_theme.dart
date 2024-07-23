import 'package:flutter/material.dart';

const Color _customColor = Color(0x9F2D0638);

List<Color> _colorsThemes = [
  _customColor,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.indigo,
  Colors.cyan,
  Colors.amber,
  Colors.lime,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.blueGrey,
  Colors.brown,
  Colors.grey,
  Colors.black,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorsThemes.length,
            'Colors must be between 0 and ${_colorsThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: false,
      colorSchemeSeed: _colorsThemes[selectedColor],
    );
  }
}
