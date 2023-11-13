import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_walk/themes/app_colors.dart';

class TxtStyle {
  TxtStyle._();
  static TextStyle h1 = GoogleFonts.openSans(
      fontWeight: FontWeight.w400, fontSize: 23, color: AppColors.white);
  static TextStyle h3 = GoogleFonts.openSans(
      fontWeight: FontWeight.w400, fontSize: 18, color: AppColors.white);
  static TextStyle labelStyle = GoogleFonts.openSans(
      fontWeight: FontWeight.w700, fontSize: 15, color: AppColors.white);
  static TextStyle inputStyle = GoogleFonts.openSans(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.white.withOpacity(0.5));

  static TextStyle text = GoogleFonts.openSans(
      fontWeight: FontWeight.w500, fontSize: 11, color: AppColors.white);

  static TextStyle title = GoogleFonts.openSans(
      fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.white);
}
