import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/utils/utils.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    backgroundColor: Color(0xff90EE90),
    leading: Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Utils.logo(img: "assets/icons/logo.png"),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 15.w),
        child: GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/icons/menu.png",
            width: 48.w,
            height: 30.h,
          ),
        ),
      ),
    ],
  );
}
