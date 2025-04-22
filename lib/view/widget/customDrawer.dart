import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mango_leaf_disease/routes/route_names.dart';
import 'package:mango_leaf_disease/utils/utils.dart';
import 'package:mango_leaf_disease/view/aboutUs_screen.dart';

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
            child: Text("হোম"),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.DiseaseScreen);
              Navigator.pop(context);
            },
            child: Text("রোগসমূহ"),
          ),
          SizedBox(height: 20.h),
          GestureDetector(onTap: () {}, child: Text("প্রোফাইল")),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.AboutusScreen);
              Navigator.pop(context);
            },
            child: Text("আমাদের সম্পর্কে"),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.LoginScreen);
              Navigator.pop(context);
            },
            child: Text("লগআউট"),
          ),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}
