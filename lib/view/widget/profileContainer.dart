import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Profilecontainer extends StatelessWidget {
  final String text;
  void Function()? onTap;

  Profilecontainer({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 312.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: Color(0xffffffff),
            border: Border.all(width: 1, color: Color(0xff000000)),
          ),
          child: Padding(
            padding: EdgeInsets.all(9),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff389A38),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
