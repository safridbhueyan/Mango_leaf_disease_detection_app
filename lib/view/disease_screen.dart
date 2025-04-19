import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';

class DiseaseScreen extends StatelessWidget {
  const DiseaseScreen({super.key});

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
                    "সমর্থিত রোগসমূহ",
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
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w),
            child: Image.asset("assets/images/lif.png"),
          ),
          SizedBox(height: 15.h),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 18.w,
                    right: 18.w,
                    top: 15.h,
                    bottom: 15.h,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffB1F3B1),
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: const Color(0xffB1F3B1)),
                    ),
                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        title: Text(
                          "রোগের নাম",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                          ),
                        ),
                        subtitle: Text(
                          "রোগের নাম",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                          ),
                        ),
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            decoration: BoxDecoration(
                              color: Color(0xffB1F3B1),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(12.r),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(color: Colors.black),
                                Text(
                                  "এই রোগটি পাতা হলুদ করে ফেলে এবং ফসলের গুণগতমান নষ্ট করে।",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                SizedBox(height: 12.h),
                                Divider(color: Colors.black),
                                SizedBox(height: 12.h),
                                Text(
                                  "চিকিৎসা: ছত্রাকনাশক ব্যবহার করুন এবং সংক্রমিত পাতা সরিয়ে ফেলুন।",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
