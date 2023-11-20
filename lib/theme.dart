import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      appBarTheme: appBar(),
      inputDecorationTheme: inputDecoration(),
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

AppBarTheme appBar() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyLarge: TextStyle(color: kTextColor),
    bodyMedium: TextStyle(color: kTextColor),
  );
}

InputDecorationTheme inputDecoration() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 8);

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
