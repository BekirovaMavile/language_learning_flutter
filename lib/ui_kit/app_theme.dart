import 'package:flutter/material.dart';

import '_ui_kit.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
      indicatorColor: LightThemeColor.light
  );

  static ThemeData darkTheme = ThemeData(
      indicatorColor: LightThemeColor.yellow
  );
}
