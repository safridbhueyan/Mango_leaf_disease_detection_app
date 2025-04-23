import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';
import 'package:mango_leaf_disease/view/widget/customDrawer.dart';
import 'package:mango_leaf_disease/view_model/imagePicker_provider.dart';
import 'package:provider/provider.dart';

class PickimageScreen extends StatelessWidget {
  const PickimageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: appbar(),
      endDrawer: Customdrawer(),
      body: Column(
        children: [
          SizedBox(height: 21.h),
          Padding(
            padding: EdgeInsets.only(left: 32.w),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/images/arro.png", width: 35.w),
                    ),
                  ),
                  SizedBox(width: 23.w),
                  Text(
                    "রোগের নাম",
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff008000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Consumer<ImagepickerProvider>(
                builder: (context, pick, _) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 34.w, right: 34.w),
                        child:
                            pick.pickedIamage != null
                                ? ClipRRect(
                                  borderRadius: BorderRadius.circular(30.r),
                                  child: Image.file(
                                    File(pick.pickedIamage!.path),
                                    width: 372.w,
                                    height: 239.w,
                                    fit: BoxFit.cover,
                                  ),
                                )
                                : Container(
                                  width: 120.w,
                                  height: 120.w,
                                  color: Colors.grey[300],
                                  child: Icon(Icons.person, size: 50.sp),
                                ),
                      ),

                      SizedBox(height: 30.h),
                      Padding(
                        padding: EdgeInsets.only(left: 34.w, right: 34.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "লক্ষণ:",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff008000),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 13.h),

                      Padding(
                        padding: EdgeInsets.only(left: 34.w, right: 34.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "-> xxxx xxxx xxxxx \n-> xxxxx  xxxxx  xx",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff008000),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30.h),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 34.w, right: 5.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "কারণ:",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff008000),
                                ),
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "xxxxxxxx",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff008000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.only(left: 34.w, right: 34.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "প্রতিরোধ ও চিকিৎসা:",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff008000),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 34.w, right: 34.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxx\nxxxxxxxxxx",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff008000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
