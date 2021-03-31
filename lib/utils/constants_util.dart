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
  //- DARK
  final darkPrimaryColor = Colors.indigo;

  get primaryColor =>
      brightness == Brightness.light ? lightPrimaryColor : darkPrimaryColor;

  /// //////////////////////////////////////
  ///
  /// RADIUS
  ///
  final inputBorderRadius = BorderRadius.circular(40.0);
  final buttonBorderRadius = BorderRadius.circular(40.0);

  final double padding = 50.0;
}
