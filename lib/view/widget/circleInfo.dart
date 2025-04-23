import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Circleinfo extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;

  const Circleinfo({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 84.w,
        height: 84.h,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
