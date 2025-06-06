import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {
  static Widget logo({required String? img, double? height, double? width}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),

        child: Image.asset(img!, height: height ?? 36.h, width: width ?? 36.w),
      ),
    );
  }

  static Widget mybutton({required String text, void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: Color(0xff008000),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 8.h,
            bottom: 8.h,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }

  static void showSnackbar(
    BuildContext context,
    String message, {
    Color backgroundColor = const Color(0xff90EE90),
    Duration duration = const Duration(seconds: 2),
  }) {
    final snackBar = SnackBar(
      content: Text(message, style: TextStyle(color: Colors.black54)),
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
