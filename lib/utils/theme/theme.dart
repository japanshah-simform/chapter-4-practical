import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: GoogleFonts.robotoTextTheme().copyWith(
    headlineLarge: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 42,
        fontWeight: FontWeight.w800,
      ),
    ),
    headlineMedium: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.w700,
      ),
    ),
    headlineSmall: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
      ),
    ),
    titleLarge: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
    ),
    titleMedium: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 28,
      ),
    ),
    titleSmall: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
    ),
    bodyLarge: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
    bodyMedium: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    ),
    bodySmall: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    ),
  ),
);
