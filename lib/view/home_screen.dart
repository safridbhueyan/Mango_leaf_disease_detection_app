import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: appbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                "সুস্থ পাতা, সুস্থ আম!",
                style: TextStyle(fontSize: 17.sp, color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 14.h),

            Container(
              height: 374.h,
              width: 400.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
