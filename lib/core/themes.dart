import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.roboto(
        color: kWhite,
        fontSize: 36.sp,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.roboto(
        color: kWhite,
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
