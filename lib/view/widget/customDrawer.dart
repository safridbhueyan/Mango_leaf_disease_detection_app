import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mango_leaf_disease/routes/route_names.dart';
import 'package:mango_leaf_disease/utils/utils.dart';
import 'package:mango_leaf_disease/view_model/auth_provider.dart';
import 'package:provider/provider.dart';

class Customdrawer extends StatelessWidget {
  const Customdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff90EE90),
      child: Column(
        children: [
          SizedBox(height: 60.h),
          Utils.logo(
            img: "assets/images/logobig.png",
            height: 80.h,
            width: 80.w,
          ),
          SizedBox(height: 10.h),
          Divider(
            thickness: 2,
            color: Color(0xffF1F1F1),

            indent: 16.0,
            endIndent: 16.0,
          ),

          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.HomeScreen);
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.r),
                border: Border.all(width: 2, color: Colors.black54),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "হোম",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.DiseaseScreen);
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(width: 2, color: Colors.black54),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "রোগসমূহ",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.ProfileScreen);
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.r),
                border: Border.all(width: 2, color: Colors.black54),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "প্রোফাইল",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.AboutusScreen);
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(width: 2, color: Colors.black54),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),

                child: Text(
                  "আমাদের সম্পর্কে",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Consumer<AuthServiceProvider>(
            builder: (context, ref, _) {
              return GestureDetector(
                onTap: () {
                  ref.logout();
                  context.pushNamed(RouteName.LoginScreen);
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.r),
                    border: Border.all(width: 2, color: Colors.black54),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "লগআউট",
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}
