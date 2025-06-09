import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/utils/utils.dart';
import 'package:mango_leaf_disease/view/widget/inputdecoration.dart';
import 'package:mango_leaf_disease/view_model/auth_provider.dart';
import 'package:mango_leaf_disease/view_model/imagePicker_provider.dart';
import 'package:mango_leaf_disease/view_model/password_provider.dart';
import 'package:mango_leaf_disease/view_model/user_provider.dart';
import 'package:provider/provider.dart';

void profilEditSheet(BuildContext context) {
  final userProvider = Provider.of<UserProvider>(context, listen: false);
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController(
    text: userProvider.user?.name ?? "",
  );
  TextEditingController _addressController = TextEditingController(
    text: userProvider.user?.address ?? "",
  );

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 20.h),
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),

          child: IntrinsicHeight(
            child: ClipPath(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  color: Color(0xFFF4F8ED),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                    bottom: Radius.circular(32),
                  ),
                ),
                child: Consumer(
                  builder: (context, ref, _) {
                    return Column(
                      children: [
                        SingleChildScrollView(
                          child: Center(
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
                              child: Consumer3<
                                AuthServiceProvider,
                                PasswordProvider,
                                ImagepickerProvider
                              >(
                                builder: (context, ref, pass, pic, _) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 35.h),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffDEFFDE),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: GestureDetector(
                                            onTap: () {
                                              pic.galleryProfilePick();
                                            },
                                            child:
                                                pic.pickedprofile != null
                                                    ? ClipOval(
                                                      child: Image.file(
                                                        File(
                                                          pic
                                                              .pickedprofile!
                                                              .path,
                                                        ),
                                                        height: 142.h,
                                                        width: 142.w,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )
                                                    : Image.asset(
                                                      "assets/images/profilepic.png",
                                                      height: 142.h,
                                                      width: 142.w,
                                                    ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 38.h),
                                      Text(
                                        "প্রফাইল এডিট করুন",
                                        style: TextStyle(
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff008000),
                                        ),
                                      ),
                                      SizedBox(height: 28.h),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 23.w,
                                          right: 23.w,
                                        ),
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
                                        padding: EdgeInsets.only(
                                          left: 23.w,
                                          right: 23.w,
                                        ),
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

                                      SizedBox(height: 20.h),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 23.w,
                                          right: 23.w,
                                        ),
                                        child: SizedBox(
                                          height: 40.h,
                                          width: 312.w,
                                          child: TextFormField(
                                            obscureText: pass.isVisiblepss,
                                            controller: _passwordController,
                                            decoration: customInputDecoration(
                                              hintText: "পাসওয়ার্ড লিখুন",
                                              sufix: GestureDetector(
                                                onTap: () {
                                                  pass.togglePass();
                                                },
                                                child:
                                                    pass.isVisiblepss
                                                        ? Icon(
                                                          Icons.visibility_off,
                                                          color: Color(
                                                            0xff008000,
                                                          ),
                                                          size: 24,
                                                        )
                                                        : Icon(
                                                          Icons.visibility,
                                                          color: Color(
                                                            0xff008000,
                                                          ),
                                                          size: 24,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 23.w,
                                          right: 23.w,
                                        ),
                                        child: SizedBox(
                                          height: 40.h,
                                          width: 312.w,
                                          child: TextFormField(
                                            obscureText:
                                                pass.isVisibleConfirmPass,
                                            controller:
                                                _confirmPasswordController,
                                            decoration: customInputDecoration(
                                              hintText:
                                                  "পাসওয়ার্ড কনফার্ম করুন",
                                              sufix: GestureDetector(
                                                onTap: () {
                                                  pass.toggleConfirmPass();
                                                },
                                                child:
                                                    pass.isVisibleConfirmPass
                                                        ? Icon(
                                                          Icons.visibility_off,
                                                          color: Color(
                                                            0xff008000,
                                                          ),
                                                          size: 24,
                                                        )
                                                        : Icon(
                                                          Icons.visibility,
                                                          color: Color(
                                                            0xff008000,
                                                          ),
                                                          size: 24,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 20.h),
                                      ref.isLoading
                                          ? CircularProgressIndicator(
                                            color: Color(0xff008000),
                                          )
                                          : Utils.mybutton(
                                            text: "সেভ করুন",
                                            onTap: () {},
                                          ),
                                    ],
                                  );
                                },
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
          ),
        ),
      );
    },
  );
}
