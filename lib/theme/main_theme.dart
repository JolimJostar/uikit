import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:uikit/theme/text_theme.dart';
import 'package:flutter/foundation.dart';

part 'main_theme.tailor.dart';

@tailor
class _$MyTheme {

  static List<Color> get background => [Colors.red, Colors.blue];
  static List<Color> get cardBackground => [Colors.white, Colors.white];
  static List<Color> get transparent => [Colors.transparent, Colors.transparent];
  static List<Color> get white => [Colors.white, Colors.white];
  static List<Color> get black => [Colors.black, Colors.black];
  static List<Color> get gray => [const Color(0xFF38373B), const Color(0xFF38373B)];
  static List<Color> get grey => [const Color(0xFFD9D9D9), const Color(0xFFD9D9D9)];

  @themeExtension
  static List<MyTextTheme> textTheme = MyTextTheme.themes;
}
