import 'package:flutter/material.dart';

const primaryColor = const Color(0xFF2C3E50);
const accentColor = const Color(0xFFFFF493);
const greyLineColor = const Color(0xFFE2E2E2);

ThemeData buildTheme() {
  final ThemeData base = ThemeData.light();
  final TextTheme textBase = buildTextTheme(base.textTheme);

  return base.copyWith(
      accentColor: accentColor,
      primaryColor: primaryColor,
      primaryColorLight: greyLineColor,
      primaryColorDark: primaryColor,
      indicatorColor: accentColor,
      textTheme: textBase,
      primaryTextTheme: textBase,
      accentTextTheme: buildAltTextTheme(textBase),
      iconTheme: buildIconTheme(),
      primaryIconTheme: buildIconTheme(),
      accentIconTheme: buildIconTheme());
}

TextTheme buildTextTheme(TextTheme base) {
  return base
      .copyWith(
          display4: base.display4
              .copyWith(fontSize: 40.0, fontWeight: FontWeight.w700),
          display3: base.display3
              .copyWith(fontSize: 25.0, fontWeight: FontWeight.w700),
          display2: base.display2.copyWith(
              fontSize: 30.0, fontWeight: FontWeight.w400), // Used for time
          display1: base.display1.copyWith(
              fontSize: 14.0,
              fontWeight: FontWeight.w700), // Used for overall title
          title:
              base.title.copyWith(fontSize: 20.0, fontWeight: FontWeight.w700),
          subtitle: base.subtitle
              .copyWith(fontSize: 15.0, fontWeight: FontWeight.w300),
          body2: base.body2.copyWith(
              fontSize: 12.0, fontWeight: FontWeight.w600), // Bold normal
          body1:
              base.body1.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400))
      .apply(
          fontFamily: 'Roboto',
          displayColor: Colors.black,
          bodyColor: Colors.black);
}

TextTheme buildAltTextTheme(TextTheme base) {
  return base.apply(displayColor: Colors.white, bodyColor: Colors.white);
}

IconThemeData buildIconTheme() {
  return IconThemeData(color: Colors.white, opacity: 1.0, size: 24.0);
}
