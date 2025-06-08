import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mango_leaf_disease/routes/route_names.dart';
import 'package:mango_leaf_disease/utils/utils.dart';

import 'package:mango_leaf_disease/view/widget/inputdecoration.dart';
import 'package:mango_leaf_disease/view_model/auth_provider.dart';
import 'package:mango_leaf_disease/view_model/password_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login(BuildContext context) async {
    final authProvider = Provider.of<AuthServiceProvider>(
      context,
      listen: false,
    );
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      Utils.showSnackbar(context, "সব তথ্য দিন");
      return;
    }

    try {
      await authProvider.loginEmailPassword(email, password);
      context.go(RouteName.HomeScreen);
    } catch (e) {
      Utils.showSnackbar(context, "লগইন ব্যর্থ: ${e.toString()}");
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
                            controller: _emailController,
                            decoration: customInputDecoration(
                              hintText: "ইমেইল বা মোবাইল নাম্বার",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Consumer<PasswordProvider>(
                        builder: (context, ref, _) {
                          return Padding(
                            padding: EdgeInsets.only(left: 23.w, right: 23.w),
                            child: SizedBox(
                              height: 40.h,
                              width: 312.w,
                              child: TextFormField(
                                controller: _passwordController,
                                obscureText: ref.isVisible,
                                decoration: customInputDecoration(
                                  hintText: "পাসওয়ার্ড",

                                  sufix: GestureDetector(
                                    onTap: () {
                                      ref.toggle();
                                    },
                                    child:
                                        ref.isVisible
                                            ? Icon(
                                              Icons.visibility_off,
                                              color: Color(0xff008000),
                                              size: 24,
                                            )
                                            : Icon(
                                              Icons.visibility,
                                              color: Color(0xff008000),
                                              size: 24,
                                            ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 24.h),
                      ref.isLoading
                          ? CircularProgressIndicator(color: Color(0xff008000))
                          : Utils.mybutton(
                            text: "লগইন",
                            onTap: () => _login(context),
                          ),

                      TextButton(
                        onPressed: () {
                          context.go(RouteName.SignUpScreen);
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
