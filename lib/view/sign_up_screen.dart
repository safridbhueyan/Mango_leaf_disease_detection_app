import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mango_leaf_disease/routes/route_names.dart';
import 'package:mango_leaf_disease/utils/utils.dart';
import 'package:mango_leaf_disease/view/widget/inputdecoration.dart';
import 'package:mango_leaf_disease/view_model/auth_provider.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _addressController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _signUp(BuildContext context) async {
    final authProvider = Provider.of<AuthServiceProvider>(
      context,
      listen: false,
    );

    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final address = _addressController.text.trim();
    final password = _passwordController.text.trim();
    final confrimPassword = _confirmPasswordController.text.trim();

    if (email.isEmpty ||
        password.isEmpty ||
        name.isEmpty ||
        address.isEmpty ||
        confrimPassword.isEmpty) {
      Utils.showSnackbar(context, "সব তথ্য দিন");
      return;
    }

    if (password != confrimPassword) {
      Utils.showSnackbar(context, "পাসওয়ার্ড মিলে নি আবার চেষ্টা করুন");
      return;
    }

    try {
      bool isScuccess = await authProvider.signUpWithDetails(
        email: email,
        password: password,
        name: name,
        address: address,
        dob: DateTime.now(),
        profileImage: null,
      );
      print("\n\n\n Signup result: $isScuccess\n\n\n\n");
      if (isScuccess) {
        debugPrint("\n\n Signup success. Navigating to login...\n\n");

        Utils.showSnackbar(context, "প্রফাইল তৈরি হয়ে গিয়েছে লগইন করুন!");
        context.go(RouteName.LoginScreen);
      } else {
        Utils.showSnackbar(context, "রেজিস্ট্রেশন ব্যর্থ হয়েছে!");
      }
    } catch (e) {
      throw Exception(e);
    }
  }

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
              height: 660.h,
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
              child: Consumer<AuthServiceProvider>(
                builder: (context, ref, _) {
                  return Column(
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
                        "নিবন্ধন করুন",
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
                            controller: _nameController,
                            decoration: customInputDecoration(
                              hintText: "আপনার নাম লিখুন",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: SizedBox(
                          height: 40.h,
                          width: 312.w,
                          child: TextFormField(
                            controller: _addressController,

                            decoration: customInputDecoration(
                              hintText: "আপনার পূর্ণ ঠিকানা",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: SizedBox(
                          height: 40.h,
                          width: 312.w,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: customInputDecoration(
                              hintText: "আপনার ইমেইল বা মোবাইল নাম্বার লিখুন",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: SizedBox(
                          height: 40.h,
                          width: 312.w,
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: customInputDecoration(
                              hintText: "পাসওয়ার্ড লিখুন",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: SizedBox(
                          height: 40.h,
                          width: 312.w,
                          child: TextFormField(
                            controller: _confirmPasswordController,
                            decoration: customInputDecoration(
                              hintText: "পাসওয়ার্ড কনফার্ম করুন",
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20.h),
                      ref.isLoading
                          ? CircularProgressIndicator(color: Color(0xff008000))
                          : Utils.mybutton(
                            text: "রেজিস্ট্রেশন",
                            onTap: () => _signUp(context),
                          ),

                      TextButton(
                        onPressed: () {
                          context.go(RouteName.LoginScreen);
                        },
                        child: Text(
                          "অথবা লগইন করুন",
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
