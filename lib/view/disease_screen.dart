import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mango_leaf_disease/view/widget/appbar.dart';
import 'package:mango_leaf_disease/view/widget/customDrawer.dart';
import 'package:mango_leaf_disease/view_model/symtom_provider.dart';
import 'package:provider/provider.dart';

class DiseaseScreen extends StatelessWidget {
  const DiseaseScreen({super.key});

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

          Consumer<SymtomProvider>(
            builder: (context, rog, _) {
              return Expanded(
                child: ListView.builder(
                  itemCount: rog.model.length,

                  itemBuilder: (context, index) {
                    final model = rog.model[index];
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
                              model.title,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              model.subtitle,
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
                                    Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "বর্ণনা:",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            model.discription,
                                            style: TextStyle(fontSize: 16.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12.h),
                                    Divider(color: Colors.black),
                                    SizedBox(height: 12.h),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "লক্ষণসমূহ:",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                "assets/icons/dot.png",
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              model.symtom[0],
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                "assets/icons/dot.png",
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              model.symtom[1],
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                "assets/icons/dot.png",
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              model.symtom[2],
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12.h),
                                    Divider(color: Colors.black),
                                    SizedBox(height: 12.h),
                                    Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "প্রতিকার:",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            model.cure,
                                            style: TextStyle(fontSize: 16.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12.h),
                                    Divider(color: Colors.black),
                                    SizedBox(height: 12.h),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "প্রতিরোধ:",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                "assets/icons/dot.png",
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              model.resistance[0],
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                "assets/icons/dot.png",
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              model.resistance[1],

                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                "assets/icons/dot.png",
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              model.resistance[2],

                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: 10.h),
                                      ],
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
              );
            },
          ),
        ],
      ),
    );
  }
}
