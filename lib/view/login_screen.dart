import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/utils/utils.dart';
import 'package:mango_leaf_disease/view/home_screen.dart';
import 'package:mango_leaf_disease/view/sign_up_screen.dart';
import 'package:mango_leaf_disease/view/widget/inputdecoration.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Color(0xffF2F0F0)),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/bgm.png",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          Center(
            child: Container(
              width: 358.w,
              height: 480.h,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 35.h),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffDEFFDE),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/images/logobig.png",
                        height: 90.h,
                        width: 90.w,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.h),
                  Text(
                    "লগইন করুন",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff008000),
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Padding(
                    padding: EdgeInsets.only(left: 23.w, right: 23.w),
                    child: SizedBox(
                      height: 40.h,
                      width: 312.w,
                      child: TextFormField(
                        decoration: customInputDecoration(
                          hintText: "ইমেইল বা মোবাইল নাম্বার",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.only(left: 23.w, right: 23.w),
                    child: SizedBox(
                      height: 40.h,
                      width: 312.w,
                      child: TextFormField(
                        decoration: customInputDecoration(
                          hintText: "পাসওয়ার্ড",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Utils.mybutton(
                    text: "লগইন",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "অথবা একাউন্ট তৈরী করুন",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff008000),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox(height: 24.h)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
