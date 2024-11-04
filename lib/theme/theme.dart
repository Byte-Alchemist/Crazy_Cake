import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8c4f26),
      surfaceTint: Color(0xff8c4f26),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbc8),
      onPrimaryContainer: Color(0xff321300),
      secondary: Color(0xff765847),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbc8),
      onSecondaryContainer: Color(0xff2b1609),
      tertiary: Color(0xff616033),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe8e5ac),
      onTertiaryContainer: Color(0xff1d1d00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff52443c),
      outline: Color(0xff85746b),
      outlineVariant: Color(0xffd7c2b8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e29),
      inversePrimary: Color(0xffffb68a),
      primaryFixed: Color(0xffffdbc8),
      onPrimaryFixed: Color(0xff321300),
      primaryFixedDim: Color(0xffffb68a),
      onPrimaryFixedVariant: Color(0xff6f3811),
      secondaryFixed: Color(0xffffdbc8),
      onSecondaryFixed: Color(0xff2b1609),
      secondaryFixedDim: Color(0xffe5bfa9),
      onSecondaryFixedVariant: Color(0xff5c4131),
      tertiaryFixed: Color(0xffe8e5ac),
      onTertiaryFixed: Color(0xff1d1d00),
      tertiaryFixedDim: Color(0xffcbc992),
      onTertiaryFixedVariant: Color(0xff49491e),
      surfaceDim: Color(0xffe7d7cf),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ea),
      surfaceContainer: Color(0xfffceae2),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6a340d),
      surfaceTint: Color(0xff8c4f26),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa6643a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff573d2d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8e6e5c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff45451a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff787747),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff4e4038),
      outline: Color(0xff6c5c53),
      outlineVariant: Color(0xff88776e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e29),
      inversePrimary: Color(0xffffb68a),
      primaryFixed: Color(0xffa6643a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff894d24),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8e6e5c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff735644),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff787747),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5f5e31),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d7cf),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ea),
      surfaceContainer: Color(0xfffceae2),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd7),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3c1800),
      surfaceTint: Color(0xff8c4f26),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6a340d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff331d0f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff573d2d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff242400),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff45451a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d211b),
      outline: Color(0xff4e4038),
      outlineVariant: Color(0xff4e4038),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e29),
      inversePrimary: Color(0xffffe7db),
      primaryFixed: Color(0xff6a340d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4c2000),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff573d2d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3f2719),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff45451a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2f2e06),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d7cf),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ea),
      surfaceContainer: Color(0xfffceae2),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd7),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb68a),
      surfaceTint: Color(0xffffb68a),
      onPrimary: Color(0xff522300),
      primaryContainer: Color(0xff6f3811),
      onPrimaryContainer: Color(0xffffdbc8),
      secondary: Color(0xffe5bfa9),
      onSecondary: Color(0xff432b1c),
      secondaryContainer: Color(0xff5c4131),
      onSecondaryContainer: Color(0xffffdbc8),
      tertiary: Color(0xffcbc992),
      onTertiary: Color(0xff333209),
      tertiaryContainer: Color(0xff49491e),
      onTertiaryContainer: Color(0xffe8e5ac),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a120d),
      onSurface: Color(0xfff0dfd7),
      onSurfaceVariant: Color(0xffd7c2b8),
      outline: Color(0xff9f8d84),
      outlineVariant: Color(0xff52443c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd7),
      inversePrimary: Color(0xff8c4f26),
      primaryFixed: Color(0xffffdbc8),
      onPrimaryFixed: Color(0xff321300),
      primaryFixedDim: Color(0xffffb68a),
      onPrimaryFixedVariant: Color(0xff6f3811),
      secondaryFixed: Color(0xffffdbc8),
      onSecondaryFixed: Color(0xff2b1609),
      secondaryFixedDim: Color(0xffe5bfa9),
      onSecondaryFixedVariant: Color(0xff5c4131),
      tertiaryFixed: Color(0xffe8e5ac),
      onTertiaryFixed: Color(0xff1d1d00),
      tertiaryFixedDim: Color(0xffcbc992),
      onTertiaryFixedVariant: Color(0xff49491e),
      surfaceDim: Color(0xff1a120d),
      surfaceBright: Color(0xff413732),
      surfaceContainerLowest: Color(0xff140d08),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff261e19),
      surfaceContainerHigh: Color(0xff312823),
      surfaceContainerHighest: Color(0xff3d332d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbc94),
      surfaceTint: Color(0xffffb68a),
      onPrimary: Color(0xff2a0e00),
      primaryContainer: Color(0xffc78053),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeac3ad),
      onSecondary: Color(0xff251105),
      secondaryContainer: Color(0xffac8a76),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd0cd96),
      onTertiary: Color(0xff181700),
      tertiaryContainer: Color(0xff959361),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120d),
      onSurface: Color(0xfffffaf8),
      onSurfaceVariant: Color(0xffdbc7bc),
      outline: Color(0xffb29f95),
      outlineVariant: Color(0xff918076),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd7),
      inversePrimary: Color(0xff703912),
      primaryFixed: Color(0xffffdbc8),
      onPrimaryFixed: Color(0xff220a00),
      primaryFixedDim: Color(0xffffb68a),
      onPrimaryFixedVariant: Color(0xff5a2802),
      secondaryFixed: Color(0xffffdbc8),
      onSecondaryFixed: Color(0xff1f0c03),
      secondaryFixedDim: Color(0xffe5bfa9),
      onSecondaryFixedVariant: Color(0xff493121),
      tertiaryFixed: Color(0xffe8e5ac),
      onTertiaryFixed: Color(0xff121200),
      tertiaryFixedDim: Color(0xffcbc992),
      onTertiaryFixedVariant: Color(0xff38380e),
      surfaceDim: Color(0xff1a120d),
      surfaceBright: Color(0xff413732),
      surfaceContainerLowest: Color(0xff140d08),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff261e19),
      surfaceContainerHigh: Color(0xff312823),
      surfaceContainerHighest: Color(0xff3d332d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffffaf8),
      surfaceTint: Color(0xffffb68a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbc94),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffeac3ad),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffbe5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd0cd96),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf8),
      outline: Color(0xffdbc7bc),
      outlineVariant: Color(0xffdbc7bc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd7),
      inversePrimary: Color(0xff481e00),
      primaryFixed: Color(0xffffe1d1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbc94),
      onPrimaryFixedVariant: Color(0xff2a0e00),
      secondaryFixed: Color(0xffffe1d1),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffeac3ad),
      onSecondaryFixedVariant: Color(0xff251105),
      tertiaryFixed: Color(0xffeceab0),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd0cd96),
      onTertiaryFixedVariant: Color(0xff181700),
      surfaceDim: Color(0xff1a120d),
      surfaceBright: Color(0xff413732),
      surfaceContainerLowest: Color(0xff140d08),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff261e19),
      surfaceContainerHigh: Color(0xff312823),
      surfaceContainerHighest: Color(0xff3d332d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
