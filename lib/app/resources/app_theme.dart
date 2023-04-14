import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat_apps/app/resources/color.dart';

mixin AppThemes {
  static final theme = ThemeData(
    primaryColor: colorPrimary,
    primaryColorDark: colorPrimaryDark,
    colorScheme: ColorScheme.light(primary: colorPrimary, secondary: colorPrimaryDark, error: Colors.red),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorPrimary,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.openSansTextTheme(),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      color: colorPrimary,
      elevation: 1.0,
      titleTextStyle: GoogleFonts.openSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      actionsIconTheme: IconThemeData(color: Colors.white),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );
}
