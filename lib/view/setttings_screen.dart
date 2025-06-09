import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';
import 'package:mango_leaf_disease/view/widget/customDrawer.dart';

class SetttingsScreen extends StatelessWidget {
  const SetttingsScreen({super.key});

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
                    "সেটিংস",
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
          Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Text("ডার্ক মোড"),
                      Spacer(),
                      Switch(
                        activeColor: Color(0xff008000),
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
