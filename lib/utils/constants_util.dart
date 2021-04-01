import 'package:flutter/material.dart';

class MirayesConstants {
  /// //////////////////////////////////////
  ///
  /// SETTINGS
  ///
  final String settingsAppName = 'APP';
  final bool settingsIsDebugMode = true;

  /// //////////////////////////////////////
  ///
  /// COLORS
  ///
  final brightness = Brightness.light;
  //- LIGHT
  final lightPrimaryColor = Colors.indigoAccent;
  final lightTextColor = Color(0xFF191919);
  final lightBodyBackgroundColor = Color(0xFFE7E7E7);
  final lightHeaderBackgroundColor = Color(0xFF191919);
  //- DARK
  final darkPrimaryColor = Colors.indigo;
  final darkTextColor = HexColor.fromHex('#cdd9e5');
  final darkBodyBackgroundColor = HexColor.fromHex('#1c2128');
  final darkHeaderBackgroundColor = HexColor.fromHex('#1c2128');

  get primaryColor =>
      brightness == Brightness.light ? lightPrimaryColor : darkPrimaryColor;
  get textColor =>
      brightness == Brightness.light ? lightTextColor : darkTextColor;
  get backgroundColor => brightness == Brightness.light
      ? lightBodyBackgroundColor
      : darkBodyBackgroundColor;
  get headerBackgroundColor => brightness == Brightness.light
      ? lightHeaderBackgroundColor
      : darkHeaderBackgroundColor;

  /// //////////////////////////////////////
  ///
  /// SPACES
  ///
  final padding = 20.0;

  /// //////////////////////////////////////
  ///
  /// RADIUS
  ///
  final inputBorderRadius = BorderRadius.circular(40.0);
  final buttonBorderRadius = BorderRadius.circular(40.0);

  /// //////////////////////////////////////
  ///
  /// THEME
  ///
  get themeData => ThemeData(
        primaryColor: primaryColor,
        brightness: brightness,
        scaffoldBackgroundColor: backgroundColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: primaryColor),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: textColor),
          bodyText2: TextStyle(color: textColor),
          headline5: TextStyle(color: darkTextColor),
        ),
      );
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
