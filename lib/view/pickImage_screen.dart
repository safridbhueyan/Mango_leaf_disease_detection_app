import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';
import 'package:mango_leaf_disease/view/widget/customDrawer.dart';
import 'package:mango_leaf_disease/view_model/imagePicker_provider.dart';
import 'package:mango_leaf_disease/view_model/symtom_provider.dart';
import 'package:provider/provider.dart';

class PickimageScreen extends StatelessWidget {
  const PickimageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: appbar(),
      endDrawer: Customdrawer(),
      body: Consumer<ImagepickerProvider>(
        builder: (context, pick, _) {
          final prediction =
              pick.modelResults?.isNotEmpty == true
                  ? pick.modelResults!.first
                  : null;

          final predictedLabel =
              prediction != null
                  ? pick.cleanLabel(prediction['label'])
                  : 'কোনো রোগ সনাক্ত হয়নি';
          final confidence =
              prediction != null
                  ? (prediction['confidence'] * 100).toStringAsFixed(2)
                  : '';

          return Column(
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
                          child: Image.asset(
                            "assets/images/arro.png",
                            width: 35.w,
                          ),
                        ),
                      ),
                      SizedBox(width: 23.w),
                      Text(
                        "${predictedLabel}",
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
                  child: Consumer2<ImagepickerProvider, SymtomProvider>(
                    builder: (context, pick, symtom, _) {
                      final info = symtom.findDiseaseByLabel(predictedLabel);
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 34.w, right: 34.w),
                            child:
                                pick.pickedImage != null
                                    ? ClipRRect(
                                      borderRadius: BorderRadius.circular(30.r),
                                      child: Image.file(
                                        File(pick.pickedImage!.path),
                                        width: 372.w,
                                        height: 239.w,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                    : Container(
                                      width: 120.w,
                                      height: 120.w,
                                      color: Colors.grey[300],
                                      child: Icon(Icons.person, size: 50.sp),
                                    ),
                          ),

                          SizedBox(height: 30.h),
                          Padding(
                            padding: EdgeInsets.only(left: 34.w, right: 34.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "লক্ষণ:",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff008000),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 13.h),

                          Padding(
                            padding: EdgeInsets.only(left: 34.w, right: 34.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "-> $confidence% (accuracy)\n-> ${info!.symtom.join('\n-> ')}",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff008000),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 30.h),

                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 34.w,
                                  right: 5.w,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,

                                  child: Text(
                                    "কারণ:",
                                    textAlign: TextAlign.justify,

                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff008000),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(
                                  left: 34.w,
                                  right: 5.w,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${info.discription}",
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.start,

                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff008000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Padding(
                            padding: EdgeInsets.only(left: 34.w, right: 34.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "প্রতিরোধ ও চিকিৎসা:",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff008000),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 34.w, right: 34.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "${info.cure}",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff008000),
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
            ],
          );
        },
      ),
    );
  }
}
