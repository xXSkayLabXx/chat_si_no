import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFFF6466);

const List<Color> _colorThemes = [
  _customColor,
  Colors.greenAccent,
  Colors.indigo,
  Colors.deepOrange,
  Colors.cyan,
  Colors.limeAccent,
  Colors.pinkAccent,
  Colors.yellow
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'la lista de colores debe ser entre 0 y ${(_colorThemes.length) - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
