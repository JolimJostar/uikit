// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'text_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class MyTextTheme extends ThemeExtension<MyTextTheme>
    with DiagnosticableTreeMixin {
  const MyTextTheme({
    required this.cardTitle,
    required this.main,
    required this.mainColor,
  });

  final TextStyle cardTitle;
  final TextStyle main;
  final Color mainColor;

  static final MyTextTheme light = MyTextTheme(
    cardTitle: _$MyTextTheme.cardTitle[0],
    main: _$MyTextTheme.main[0],
    mainColor: _$MyTextTheme.mainColor[0],
  );

  static final MyTextTheme dark = MyTextTheme(
    cardTitle: _$MyTextTheme.cardTitle[1],
    main: _$MyTextTheme.main[1],
    mainColor: _$MyTextTheme.mainColor[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  MyTextTheme copyWith({
    TextStyle? cardTitle,
    TextStyle? main,
    Color? mainColor,
  }) {
    return MyTextTheme(
      cardTitle: cardTitle ?? this.cardTitle,
      main: main ?? this.main,
      mainColor: mainColor ?? this.mainColor,
    );
  }

  @override
  MyTextTheme lerp(covariant ThemeExtension<MyTextTheme>? other, double t) {
    if (other is! MyTextTheme) return this as MyTextTheme;
    return MyTextTheme(
      cardTitle: TextStyle.lerp(cardTitle, other.cardTitle, t)!,
      main: TextStyle.lerp(main, other.main, t)!,
      mainColor: Color.lerp(mainColor, other.mainColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyTextTheme'))
      ..add(DiagnosticsProperty('cardTitle', cardTitle))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('mainColor', mainColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyTextTheme &&
            const DeepCollectionEquality().equals(cardTitle, other.cardTitle) &&
            const DeepCollectionEquality().equals(main, other.main) &&
            const DeepCollectionEquality().equals(mainColor, other.mainColor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(cardTitle),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(mainColor),
    );
  }
}
