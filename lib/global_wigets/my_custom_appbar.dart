import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/utils/colors.dart';

import 'package:quiz_app/utils/styles.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSize {
  const MyCustomAppBar(
      {Key? key, required this.title, required this.appBarColor})
      : super(key: key);
  final String title;
  final Color appBarColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      elevation: 6,
      title: Text(
        title,
        style: MyTextStyles.oswaldBold700
            .copyWith(fontSize: 20.sp, color: MyColors.black),
      ),
      centerTitle: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: MyColors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56.h);

  @override
  Widget get child => throw UnimplementedError();
}
