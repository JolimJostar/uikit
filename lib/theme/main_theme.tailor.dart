// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'main_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class MyTheme extends ThemeExtension<MyTheme> with DiagnosticableTreeMixin {
  const MyTheme({
    required this.background,
    required this.black,
    required this.gray,
    required this.textTheme,
    required this.white,
  });

  final Color background;
  final Color black;
  final Color gray;
  final MyTextTheme textTheme;
  final Color white;

  static final MyTheme light = MyTheme(
    background: _$MyTheme.background[0],
    black: _$MyTheme.black[0],
    gray: _$MyTheme.gray[0],
    textTheme: _$MyTheme.textTheme[0],
    white: _$MyTheme.white[0],
  );

  static final MyTheme dark = MyTheme(
    background: _$MyTheme.background[1],
    black: _$MyTheme.black[1],
    gray: _$MyTheme.gray[1],
    textTheme: _$MyTheme.textTheme[1],
    white: _$MyTheme.white[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  MyTheme copyWith({
    Color? background,
    Color? black,
    Color? gray,
    MyTextTheme? textTheme,
    Color? white,
  }) {
    return MyTheme(
      background: background ?? this.background,
      black: black ?? this.black,
      gray: gray ?? this.gray,
      textTheme: textTheme ?? this.textTheme,
      white: white ?? this.white,
    );
  }

  @override
  MyTheme lerp(covariant ThemeExtension<MyTheme>? other, double t) {
    if (other is! MyTheme) return this as MyTheme;
    return MyTheme(
      background: Color.lerp(background, other.background, t)!,
      black: Color.lerp(black, other.black, t)!,
      gray: Color.lerp(gray, other.gray, t)!,
      textTheme: textTheme.lerp(other.textTheme, t) as MyTextTheme,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyTheme'))
      ..add(DiagnosticsProperty('background', background))
      ..add(DiagnosticsProperty('black', black))
      ..add(DiagnosticsProperty('gray', gray))
      ..add(DiagnosticsProperty('textTheme', textTheme))
      ..add(DiagnosticsProperty('white', white));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyTheme &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(gray, other.gray) &&
            const DeepCollectionEquality().equals(textTheme, other.textTheme) &&
            const DeepCollectionEquality().equals(white, other.white));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(gray),
      const DeepCollectionEquality().hash(textTheme),
      const DeepCollectionEquality().hash(white),
    );
  }
}

extension MyThemeBuildContextProps on BuildContext {
  MyTheme get myTheme => Theme.of(this).extension<MyTheme>()!;
  Color get background => myTheme.background;
  Color get black => myTheme.black;
  Color get gray => myTheme.gray;
  MyTextTheme get textTheme => myTheme.textTheme;
  Color get white => myTheme.white;
}
