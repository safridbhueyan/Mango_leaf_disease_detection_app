import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';

class AboutusScreen extends StatelessWidget {
  const AboutusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: appbar(),
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
                    "আমাদের সম্পর্কে",
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
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 34.w),
                    child: Image.asset("assets/images/comp.png"),
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 34.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "আম পাতা রোগ নির্ণয় অ্যাপ",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff008000).withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 13.h),

                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 34.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff90EE90).withOpacity(0.7),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "এই অ্যাপটি আমগাছের পাতার রোগ সনাক্তকরণে সহায়তা করে। মেশিন লার্নিং মডেল ব্যবহার করে অ্যাপটি পাতার ছবি থেকে রোগ চিহ্নিত করতে পারে।",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 34.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "বৈশিষ্ট্যসমূহ:",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff008000).withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 13.h),

                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 34.w),
                    child: Container(
                      height: 204.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff90EE90).withOpacity(0.7),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "→ ক্যামেরা দিয়ে সরাসরি ছবি তোলা",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Expanded(
                              child: Text(
                                "→ গ্যালারি থেকে ছবি নির্বাচন",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Expanded(
                              child: Text(
                                "→ দ্রুত রোগ সনাক্তকরণ",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Expanded(
                              child: Text(
                                "→ রোগের বিস্তারিত তথ্য",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Expanded(
                              child: Text(
                                "→ বাংলা ভাষায় ফলাফল প্রদর্শন",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 34.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "যোগাযোগ:",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff008000).withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 13.h),

                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 34.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff90EE90).withOpacity(0.7),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10.w,
                          right: 15.w,
                          top: 19.h,
                          bottom: 28.h,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/image 7.png",
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                SizedBox(width: 7.w),

                                Text(
                                  "ইমেইল: mdrasel199800@gmail.com",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.w),

                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/image 8.png",
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                SizedBox(width: 7.w),

                                Text(
                                  "ফোন: 01866315753",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 17.w),

                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/image 9.png",
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                SizedBox(width: 7.w),

                                Text(
                                  "'ঠিকানা: ঢাকা, বাংলাদেশ",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
