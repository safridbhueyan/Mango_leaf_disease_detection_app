import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';
import 'package:mango_leaf_disease/view/widget/circleInfo.dart';
import 'package:mango_leaf_disease/view/widget/customDrawer.dart';
import 'package:mango_leaf_disease/view/widget/profileContainer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: appbar(),
      endDrawer: Customdrawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 21.h),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "assets/images/profilepic.png",
                  height: 142.h,
                  width: 142.w,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "ব্যবহারকারীর নাম",
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xff008000),
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 140.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Color(0xff008000),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "এডিট প্রোফাইল",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Expanded(
                        child: Image.asset(
                          "assets/icons/Vector.png",
                          width: 18.w,
                          height: 18.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 31.h),
            Profilecontainer(text: "ব্যবহারকারীর নাম", onTap: () {}),
            Profilecontainer(text: "ব্যবহারকারীর ঠিকানা", onTap: () {}),
            Profilecontainer(text: "ব্যবহারকারীর মোবাইল নাম্বার", onTap: () {}),
            Profilecontainer(text: "ব্যবহারকারীর পাসওয়ার্ড ", onTap: () {}),

            SizedBox(height: 36.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "মোট পাতা স্ক্যান হয়েছে",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff008000),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Circleinfo(
                        text: "২৪ টি ",
                        color: Color(0xff90EE90),
                        textColor: Color(0xff008000),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "শেষ স্ক্যানের ফলাফল",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff008000),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Circleinfo(
                        text: "  সুস্থ/সংক্রামিত",
                        color: Color(0xff90EE90),
                        textColor: Color(0xff008000),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Center(
              child: Column(
                children: [
                  Text(
                    "সাফল্যের হার",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff389A38),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 140.w, right: 140.w),
                    child: Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(height: 4, color: Color(0xff90EE90)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Circleinfo(
                        text: "৮০%",
                        color: Color(0xff389A38),
                        textColor: Color(0xffffffff),
                      ),
                      SizedBox(height: 2.h),

                      Text(
                        "সুস্থ",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff008000),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Circleinfo(
                        text: "২০%",
                        color: Color(0xffF64F60),
                        textColor: Color(0xffffffff),
                      ),
                      SizedBox(height: 2.h),

                      Text(
                        "সংক্রামিত",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffF64F60),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
