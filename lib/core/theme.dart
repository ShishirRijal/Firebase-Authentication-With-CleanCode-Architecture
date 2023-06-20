import '../presentation/resources/resources.dart';
import 'package:flutter/material.dart';

ThemeData get theme => _theme;

ThemeData _theme = ThemeData(
  //! text theme
  textTheme: TextTheme(
    //* display
    headlineLarge: getBoldTextStyle(size: 24),

    //* Body
    bodyLarge: getRegularTextStyle(),

    //* label
    labelLarge: getRegularTextStyle(color: ColorManager.accent),
  ),
);
