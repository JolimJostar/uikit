import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:uikit/gen/fonts.gen.dart';
import 'package:flutter/foundation.dart';

part 'text_theme.tailor.dart';

@tailorComponent
class _$MyTextTheme {
  static List<Color> get mainColor => [Colors.black, Colors.black];

  static List<TextStyle> get main => [
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.roboto,
      fontSize: 40,
      height: 1.20,
      letterSpacing: 0.37,
      color: mainColor[0],
    ),
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.roboto,
      fontSize: 40,
      height: 1.20,
      letterSpacing: 0.37,
      color: mainColor[1],
    ),
  ];

  static List<TextStyle> get cardTitle => [
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.roboto,
      fontSize: 25,
      height: 1.28,
      color: mainColor[0],
    ),
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.roboto,
      fontSize: 25,
      height: 1.28,
      color: mainColor[1],
    ),
  ];

  static List<TextStyle> get button => [
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.roboto,
      fontSize: 16,
      height: 1.5,
      color: mainColor[0],
    ),
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.roboto,
      fontSize: 16,
      height: 1.5,
      color: mainColor[1],
    ),
  ];

  static List<TextStyle> get compactCardTitle => [
     TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.roboto,
      fontSize: 16,
      height: 1.23,
      color: mainColor[0],
    ),
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.roboto,
      fontSize: 16,
      height: 1.23,
      color: mainColor[1],
    ),
  ];

  static List<TextStyle> get compactCardSubtitle => [
     TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
      fontSize: 13,
      height: 1.23,
      color: mainColor[0],
    ),
    TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
      fontSize: 13,
      height: 1.23,
      color: mainColor[1],
    ),
  ];
}
