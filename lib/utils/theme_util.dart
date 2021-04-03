import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';

class MirayesThemeController extends GetxController {
  final _wasInit = false.obs;
  set wasInit(value) => this._wasInit.value = value;
  get wasInit => this._wasInit.value;

  final _brightness = Brightness.dark.obs;
  get brightness => this._brightness.value;
  set brightness(value) => this._brightness.value = value;

  /// ////////////////////////////////////////////////////////
  ///
  /// LIGHT
  ///
  /// ////////////////////////////////////////////////////////

  /// LIGHT - PRIMARY COLOR
  final Rx<Color> _lightPrimaryColor = Color(0xff333951).obs;
  Color get lightPrimaryColor => this._lightPrimaryColor.value;
  set lightPrimaryColor(value) => this._lightPrimaryColor.value = value;

  /// LIGHT - ACCENT COLOR
  final Rx<Color> _lightAccentColor = Color(0xff333951).obs;
  Color get lightAccentColor => this._lightAccentColor.value;
  set lightAccentColor(value) => this._lightAccentColor.value = value;

  /// LIGHT - BODY BACKGROUND COLOR
  final Rx<Color> _lightBodyBackgroundColor = Colors.white.obs;
  Color get lightBodyBackgroundColor => this._lightBodyBackgroundColor.value;
  set lightBodyBackgroundColor(value) =>
      this._lightBodyBackgroundColor.value = value;

  /// LIGHT - BODY BACKGROUND 02 COLOR
  final Rx<Color> _lightBodyBackground02Color = HexColor.fromHex('#e6e6e6').obs;
  Color get lightBodyBackground02Color =>
      this._lightBodyBackground02Color.value;
  set lightBodyBackground02Color(value) =>
      this._lightBodyBackground02Color.value = value;

  /// LIGHT - TEXT BODY 01 COLOR
  final Rx<Color> _lightBodyText01Color = Color(0xff333951).obs;
  Color get lightBodyText01Color => this._lightBodyText01Color.value;
  set lightBodyText01Color(value) => this._lightBodyText01Color.value = value;

  /// LIGHT - HEADER BACKGROUND COLOR
  final Rx<Color> _lightHeaderBackgroundColor = Colors.black.obs;
  Color get lightHeaderBackgroundColor =>
      this._lightHeaderBackgroundColor.value;
  set lightHeaderBackgroundColor(value) =>
      this._lightHeaderBackgroundColor.value = value;

  /// LIGHT - MENU BACKGROUND COLOR
  final Rx<Color> _lightMenuBackgroundColor = Color(0xff333951).obs;
  Color get lightMenuBackgroundColor => this._lightMenuBackgroundColor.value;
  set lightMenuBackgroundColor(value) =>
      this._lightMenuBackgroundColor.value = value;

  /// ////////////////////////////////////////////////////////
  ///
  /// DARK
  ///
  /// ////////////////////////////////////////////////////////

  /// DARK - PRIMARY COLOR
  final Rx<Color> _darkPrimaryColor = Colors.black.obs;
  Color get darkPrimaryColor => this._darkPrimaryColor.value;
  set darkPrimaryColor(value) => this._darkPrimaryColor.value = value;

  /// DARK - ACCENT COLOR
  final Rx<Color> _darkAccentColor = Colors.grey.shade500.obs;
  Color get darkAccentColor => this._darkAccentColor.value;
  set darkAccentColor(value) => this._darkAccentColor.value = value;

  /// DARK - BODY BACKGROUND COLOR
  final Rx<Color> _darkBodyBackgroundColor = HexColor.fromHex('#1f1f2e').obs;
  Color get darkBodyBackgroundColor => this._darkBodyBackgroundColor.value;
  set darkBodyBackgroundColor(value) =>
      this._darkBodyBackgroundColor.value = value;

  /// DARK - BODY BACKGROUND 02 COLOR
  final Rx<Color> _darkBodyBackground02Color = HexColor.fromHex('#33334d').obs;
  Color get darkBodyBackground02Color => this._darkBodyBackground02Color.value;
  set darkBodyBackground02Color(value) =>
      this._darkBodyBackground02Color.value = value;

  /// DARK - TEXT BODY 01 COLOR
  final Rx<Color> _darkBodyText01Color = Colors.white.obs;
  Color get darkBodyText01Color => this._darkBodyText01Color.value;
  set darkBodyText01Color(value) => this._darkBodyText01Color.value = value;

  /// DARK - HEADER BACKGROUND COLOR
  final Rx<Color> _darkHeaderBackgroundColor = Colors.black.obs;
  Color get darkHeaderBackgroundColor => this._darkHeaderBackgroundColor.value;
  set darkHeaderBackgroundColor(value) =>
      this._darkHeaderBackgroundColor.value = value;

  /// DARK - MENU BACKGROUND COLOR
  final Rx<Color> _darkMenuBackgroundColor = Color(0xff333951).obs;
  Color get darkMenuBackgroundColor => this._darkMenuBackgroundColor.value;
  set darkMenuBackgroundColor(value) =>
      this._darkMenuBackgroundColor.value = value;

  /// ////////////////////////////////////////////////////////
  ///
  /// FINAL
  ///
  /// ////////////////////////////////////////////////////////

  /// FINAL - PRIMARY COLOR
  final Rx<Color> _primaryColor = Colors.indigo.shade700.obs;
  Color get primaryColor =>
      brightness == Brightness.light ? lightPrimaryColor : darkPrimaryColor;
  set primaryColor(value) => this._primaryColor.value = value;

  /// FINAL - ACCENT COLOR
  final Rx<Color> _accentColor = Colors.indigo.shade700.obs;
  Color get accentColor =>
      brightness == Brightness.light ? lightAccentColor : darkAccentColor;
  set accentColor(value) => this._accentColor.value = value;

  /// FINAL - BODY BACKGROUND COLOR
  final Rx<Color> _bodyBackgroundColor = Colors.indigo.shade700.obs;
  Color get bodyBackgroundColor => brightness == Brightness.light
      ? lightBodyBackgroundColor
      : darkBodyBackgroundColor;
  set bodyBackgroundColor(value) => this._bodyBackgroundColor.value = value;

  /// FINAL - BODY BACKGROUND 02 COLOR
  final Rx<Color> _bodyBackground02Color = Colors.grey.shade900.obs;
  Color get bodyBackground02Color => brightness == Brightness.light
      ? lightBodyBackground02Color
      : darkBodyBackground02Color;
  set bodyBackground02Color(value) => this._bodyBackground02Color.value = value;

  /// FINAL - TEXT BODY 01 COLOR
  final Rx<Color> _bodyText01Color = Colors.indigo.shade700.obs;
  Color get bodyText01Color => brightness == Brightness.light
      ? lightBodyText01Color
      : darkBodyText01Color;
  set bodyText01Color(value) => this._bodyText01Color.value = value;

  /// FINAL - HEADER BACKGROUND COLOR
  final Rx<Color> _headerBackgroundColor = Colors.indigo.shade700.obs;
  Color get headerBackgroundColor => brightness == Brightness.light
      ? lightHeaderBackgroundColor
      : darkHeaderBackgroundColor;
  set headerBackgroundColor(value) => this._headerBackgroundColor.value = value;

  /// FINAL - MENU BACKGROUND COLOR
  final Rx<Color> _menuBackgroundColor = Colors.indigo.shade700.obs;
  Color get menuBackgroundColor => brightness == Brightness.light
      ? lightMenuBackgroundColor
      : darkMenuBackgroundColor;
  set menuBackgroundColor(value) => this._menuBackgroundColor.value = value;

  /// ////////////////////////////////////////////////////////
  ///
  /// SPACES
  ///
  /// ////////////////////////////////////////////////////////
  final _padding = 20.0.obs;
  get padding => this._padding.value;
  set padding(value) => this._padding.value = value;

  /// ////////////////////////////////////////////////////////
  ///
  /// RADIUS
  ///
  /// ////////////////////////////////////////////////////////

  /// inputBorderRadius
  final _inputBorderRadius = BorderRadius.circular(40.0).obs;
  get inputBorderRadius => this._inputBorderRadius.value;
  set inputBorderRadius(value) => this._inputBorderRadius.value = value;

  /// buttonBorderRadius
  final _buttonBorderRadius = BorderRadius.circular(40.0).obs;
  get buttonBorderRadius => this._buttonBorderRadius.value;
  set buttonBorderRadius(value) => this._buttonBorderRadius.value = value;

  /// ////////////////////////////////////////////////////////
  ///
  /// THEME
  ///
  /// ////////////////////////////////////////////////////////

  final _themeData = ThemeData().obs;
  get themeData => this._themeData.value;
  set themeData(value) => this._themeData.value = value;

  void setThemeData() {
    themeData = ThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      primaryColorDark: darkPrimaryColor,
      primaryColorLight: lightPrimaryColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: bodyBackgroundColor,
      backgroundColor: bodyBackgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
        ),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(color: bodyText01Color),
        headline2: TextStyle(color: bodyText01Color),
        headline3: TextStyle(color: bodyText01Color),
        headline4: TextStyle(color: bodyText01Color),
        headline5: TextStyle(color: bodyText01Color),
        headline6: TextStyle(color: bodyText01Color),
        bodyText1: TextStyle(color: bodyText01Color),
        bodyText2: TextStyle(color: bodyText01Color),
        subtitle1: TextStyle(color: bodyText01Color),
        subtitle2: TextStyle(color: bodyText01Color),
        button: TextStyle(color: bodyText01Color),
        caption: TextStyle(color: bodyText01Color),
        overline: TextStyle(color: bodyText01Color),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: headerBackgroundColor,
      ),
      canvasColor: menuBackgroundColor,
    );
  }

  @override
  void onInit() {
    setThemeData();
    super.onInit();
  }

  void init(BuildContext context) {
    if (!wasInit) {
      wasInit = true;
    }
  }

  void toggleBrightness() {
    brightness =
        brightness == Brightness.light ? Brightness.dark : Brightness.light;
    setThemeData();
  }
}
