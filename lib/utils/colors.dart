import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFFFBD59);
  static const Color secondaryColor = Color(0xFF253141);
  static const Color accentColor = Color(0xFF6B7B8C);
  static const Color whiteColor = Colors.white;
  static const Color darkGreyColor = Color(0xFF333333);
  static const Color linkColor = Color(0xFF4A90E2);
  static const Color successColor = Colors.green;
  static const Color warningColor = Color(0xFFFF7043);

   static ThemeData getAppTheme() {
    return ThemeData(
      primaryColor: primaryColor,
      hintColor: accentColor,
      textTheme: GoogleFonts.hindSiliguriTextTheme().copyWith(
        bodyText2: TextStyle(color: darkGreyColor),
        headline6: TextStyle(color: linkColor),
        // Add more text styles as needed
      ),
    );
  }
}
