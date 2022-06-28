import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/styles.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem(
      {Key? key, required this.questionIndex, required this.questionText})
      : super(key: key);

  final int questionIndex;
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: MyColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Question : ${questionIndex + 1}",
            style: MyTextStyles.oswaldSemiBold600.copyWith(
              fontSize: 18.sp,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            questionText,
            style: MyTextStyles.oswaldSemiBold600.copyWith(
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
