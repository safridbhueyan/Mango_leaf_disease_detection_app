import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {
  static Widget logo({required String? img}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),

        child: Image.asset(img!, height: 36.h, width: 36.w),
      ),
    );
  }
}
