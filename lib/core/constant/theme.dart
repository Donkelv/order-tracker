import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_tracker/core/constant/color_const.dart';

TextStyle largestTextRubik() {
  return GoogleFonts.rubik(
    fontSize: 32.0.sp,
    color: ColorConsts.black,
    fontWeight: FontWeight.w700,
  );
}

TextStyle largeTextRubik() {
  return GoogleFonts.rubik(
    fontSize: 25.0.sp,
    color: ColorConsts.black,
    fontWeight: FontWeight.w700,
  );
}

TextStyle semiLargeTextRubik() {
  return GoogleFonts.rubik(
    fontSize: 20.0.sp,
    color: ColorConsts.black,
    fontWeight: FontWeight.w600,
  );
}

TextStyle mediumTextRubik() {
  return GoogleFonts.rubik(
    fontSize: 16.0.sp, color: ColorConsts.black,
    //fontWeight: FontWeight.w500,
  );
}

TextStyle normalTextRubik() {
  return GoogleFonts.rubik(
    fontSize: 14.0.sp,
    color: ColorConsts.black,
    //fontWeight: FontWeight.w400,
  );
}

TextStyle smallTextRubik() {
  return GoogleFonts.rubik(
    fontSize: 12.0.sp,
    color: ColorConsts.black,
    fontWeight: FontWeight.w300,
  );
}

TextStyle smallestTextRubik() {
  return GoogleFonts.rubik(
    fontSize: 10.0.sp,
    color: ColorConsts.black,
    fontWeight: FontWeight.w200,
  );
}
