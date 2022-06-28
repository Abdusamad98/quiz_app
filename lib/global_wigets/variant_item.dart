import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/styles.dart';

class VariantItem extends StatelessWidget {
  const VariantItem(
      {Key? key,
      required this.isSelected,
      required this.variantText,
      required this.onTap})
      : super(key: key);

  final String variantText;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: isSelected ? MyColors.C_2FB209 : MyColors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 4,
                  color: Colors.grey.shade300,
                  offset: Offset(1, 3),
                )
              ]),
          child: Text(
            variantText,
            textAlign: TextAlign.start,
            style: MyTextStyles.oswaldMedium500.copyWith(
                fontSize: 15.sp,
                color: isSelected ? MyColors.white : MyColors.black),
          )),
    );
  }
}
