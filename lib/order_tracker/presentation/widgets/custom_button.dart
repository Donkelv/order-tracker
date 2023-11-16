import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_tracker/core/constant/color_const.dart';
import 'package:order_tracker/core/constant/theme.dart';


class CustomButtonWidget extends StatelessWidget {
  final Color? backColor;
  final Color? textColor;
  final String? text;
  final void Function()? onTap;
  const CustomButtonWidget({
    super.key,
    this.backColor,
    this.textColor,
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: backColor ?? ColorConsts.primary,
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20.0.r),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                text!,
                style: mediumTextRubik().copyWith(
                  color: textColor ?? ColorConsts.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
