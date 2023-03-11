// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatelessWidget {
  String? btnText;
  CustomBtn({super.key, this.btnText});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: 330.w,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(30.r)),
        child: Center(
          child: Text(btnText.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp)),
        ));
  }
}
