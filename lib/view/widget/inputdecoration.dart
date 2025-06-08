import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration customInputDecoration({
  required String hintText,
  Widget? sufix,
}) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.r),
      borderSide: BorderSide(color: Color(0xff000000)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.r),
      borderSide: BorderSide(color: Color(0xff000000)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.r),
      borderSide: BorderSide(color: Color(0xff000000)),
    ),
    hintText: hintText,
    hintStyle: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff008000),
    ),
    suffixIcon: sufix ?? null,
  );
}
