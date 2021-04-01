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
  final lightPrimaryColor = HexColor.fromHex('#1483ff');
  final lightTextColor = HexColor.fromHex('#000000');
  final lightBodyBackgroundColor = HexColor.fromHex('#fefefe');
  final lightHeaderBackgroundColor = HexColor.fromHex('#1483ff');
  final lightMenuBackgroundColor = HexColor.fromHex('#ffffff');
  //- DARK
  final darkPrimaryColor = HexColor.fromHex('#1483ff');
  final darkTextColor = HexColor.fromHex('#9c9c9c');
  final darkBodyBackgroundColor = HexColor.fromHex('#12141a');
  final darkHeaderBackgroundColor = HexColor.fromHex('#212631');
  final darkMenuBackgroundColor = HexColor.fromHex('#1c2029');

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
  get menuBackgroundColor => brightness == Brightness.light
      ? lightMenuBackgroundColor
      : darkMenuBackgroundColor;

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
        appBarTheme: AppBarTheme(backgroundColor: headerBackgroundColor),
        canvasColor: menuBackgroundColor,
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
