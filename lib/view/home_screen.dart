import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/utils/utils.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: appbar(),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                "সুস্থ পাতা, সুস্থ আম!",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 14.h),

            Container(
              height: 374.h,
              width: 400.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: Color(0xFFFFFFFF),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/photo.png",
                    height: 178.h,
                    width: 178.w,
                  ),

                  Text(
                    "আপনার ছবি আপলোড করুন",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),

                  SizedBox(height: 31.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Utils.mybutton(text: "ক্যামেরা"),
                      SizedBox(width: 8.w),
                      Text(
                        "অথবা",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFf000000),
                        ),
                      ),
                      SizedBox(width: 8.w),

                      Utils.mybutton(text: "গ্যালারি"),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "রোগ সনাক্তকরণের জন্য ছবি আপলোড করুন",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFf000000),
                    ),
                  ),

                  SizedBox(height: 25.h),
                ],
              ),
            ),
            SizedBox(height: 35.h),
            Align(
              alignment: Alignment.centerLeft,

              child: Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Text(
                  "রোগের তথ্য:",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFf000000),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 88.h,
                      width: 88.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: Color(0xff90EE90),
                      ),
                      child: Center(child: Text("রোগ")),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20.h),
            Image.asset("assets/icons/3dot.png", height: 7.h, width: 48.w),
          ],
        ),
      ),
    );
  }
}
