import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_tracker/core/constant/color_const.dart';
import 'package:order_tracker/core/constant/theme.dart';
import 'package:order_tracker/order_tracker/presentation/screen/order_track.dart';
import 'package:order_tracker/order_tracker/presentation/widgets/custom_button.dart';

class CustomOrderWidget extends StatefulWidget {
  const CustomOrderWidget({
    super.key,
  });

  @override
  State<CustomOrderWidget> createState() => _CustomOrderWidgetState();
}

class _CustomOrderWidgetState extends State<CustomOrderWidget> {
  bool? expand = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: ColorConsts.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33818288),
            blurRadius: 20,
            offset: Offset(0, 2),
            spreadRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.circular(24.0.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 15.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120.0.w,
                  height: 105.h,
                  decoration: BoxDecoration(
                    color: ColorConsts.gray20,
                    borderRadius: BorderRadius.circular(12.0.r),
                  ),
                ),
                12.0.horizontalSpace,
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Smoked Jollof Rice with Chicken",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: semiLargeTextRubik(),
                      ),
                      8.0.verticalSpace,
                      Text(
                        "N35",
                        style: semiLargeTextRubik()
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            18.0.verticalSpace,
            Divider(
              color: ColorConsts.gray20,
              height: 2.0.h,
            ),
            18.0.verticalSpace,
            CustomButtonWidget(
              text: "Track Order",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderTrackPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
