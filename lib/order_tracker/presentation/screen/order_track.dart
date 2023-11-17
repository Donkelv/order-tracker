import 'package:ably_flutter/ably_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:order_tracker/core/constant/image_const.dart';
import 'package:order_tracker/core/constant/string_const.dart';
import 'package:order_tracker/core/constant/string_extension.dart';
import 'package:order_tracker/core/constant/theme.dart';
import 'package:order_tracker/core/constant/date_time_formatter.dart';

import '../../../core/constant/color_const.dart';
import '../../logic/provider.dart';

class OrderTrackPage extends StatelessWidget {
  const OrderTrackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        statusBarColor: ColorConsts.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConsts.white,
          elevation: 0.0,
          title: Text(
            "Order Details",
            style: semiLargeTextRubik(),
          ),
          leading: IconButton.outlined(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: ColorConsts.black,
            ),
          ),
        ),
        backgroundColor: ColorConsts.white,
        body: SafeArea(
          top: true,
          bottom: false,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.0.verticalSpace,
                  Text(
                    "Smoked Jollof Rice with Chicken",
                    style: semiLargeTextRubik(),
                  ),
                  12.0.verticalSpace,
                  Divider(
                    color: ColorConsts.gray20,
                    height: 4.0.h,
                  ),
                  12.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Order ID",
                        style: mediumTextRubik()
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "#23122",
                        style: mediumTextRubik()
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  12.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Order Date",
                        style: mediumTextRubik()
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "Fri, Nov 17 2023",
                        style: mediumTextRubik()
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  12.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Order Type",
                        style: mediumTextRubik()
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "Instant",
                        style: mediumTextRubik()
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  20.0.verticalSpace,
                  const CustomOrderTrackWidget(),
                  50.0.verticalSpace
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomOrderTrackWidget extends ConsumerWidget {
  const CustomOrderTrackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: Container(
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
        child: ref.watch(ablyNotifierProvider).when(initial: () {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0.h),
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }, loading: () {
          debugPrint("loading state");
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0.h),
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }, orderPlaced: () {
          return CustomOrderPlacedWidget(size: size);
        }, orderInProgress: (orderInProgress) {
          return CustomOrderInProgressWidget(orderInProgress: orderInProgress);
        }, error: (error) {
          return CustomOrderErrorWidget(
            error: error,
          );
        }, unknownStatus: (){
          return CustomOrderPlacedWidget(size: size);
        }),
      ),
    );
  }
}

class CustomOrderErrorWidget extends StatelessWidget {
  final String error;
  const CustomOrderErrorWidget({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 18.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Error ocurred",
            style: largestTextRubik(),
          ),
          8.0.verticalSpace,
          Text(
            error,
            style: semiLargeTextRubik(),
          ),
        ],
      ),
    );
  }
}

class CustomOrderPlacedWidget extends StatelessWidget {
  const CustomOrderPlacedWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0.h),
      child: Container(
        width: size.width,
        margin: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.0.h),
        decoration: BoxDecoration(
          color: ColorConsts.primary,
          borderRadius: BorderRadius.circular(12.0.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.delivery_dining_outlined, color: ColorConsts.white,),
              //SvgPicture.asset(ImageConst().orderPlacedIcon),
              16.0.horizontalSpace,
              Text(
               StringExtensions(orderStages.first).capitalize(),
                style: mediumTextRubik().copyWith(
                  color: ColorConsts.white,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOrderInProgressWidget extends StatelessWidget {
  const CustomOrderInProgressWidget({
    super.key,
    required this.orderInProgress,
  });

  final Message orderInProgress;

  @override
  Widget build(BuildContext context) {
    final currentStageIndex =
        orderStages.indexWhere((stage) => stage == orderInProgress.data);
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < currentStageIndex + 1; i++)
            CustomTrackOrderStage(
              stage: orderStages[i],
              isActive: i == currentStageIndex,
              order: orderInProgress,
            ),
          30.0.verticalSpace
        ],
      ),
    );
  }
}

class CustomTrackOrderStage extends StatelessWidget {
  final String stage;
  final bool isActive;
  final Message order;
  const CustomTrackOrderStage({
    super.key,
    required this.stage,
    required this.isActive,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (stage == orderStages[0]) {
      return Padding(
        padding: EdgeInsets.only(top: 20.0.h),
        child: Container(
          width: size.width,
          margin: EdgeInsets.only(left: 12.0.w, right: 12.0.w, top: 12.0.h),
          decoration: BoxDecoration(
            color: ColorConsts.primary,
            borderRadius: BorderRadius.circular(12.0.r),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.delivery_dining_outlined,
                  color: ColorConsts.white,
                ),
                16.0.horizontalSpace,
                Text(
                  StringExtensions(orderStages.first).capitalize(),
                  style: mediumTextRubik().copyWith(
                    color: ColorConsts.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(left: isActive ? 17.0.w : 20.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(isActive
                ? ImageConst().currentOrderIcon
                : ImageConst().prevOrderIcon),
            23.0.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     StringExtensions(stage).capitalize(),
                      style: mediumTextRubik().copyWith(
                          fontWeight: FontWeight.w700,
                          color: isActive
                              ? ColorConsts.black
                              : ColorConsts.black.withOpacity(0.5)),
                    ),
                    3.0.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Icon(
                          Icons.alarm,
                          color: ColorConsts.primary,
                          size: 20.0.sp,
                          
                        ),
                        7.0.horizontalSpace,
                        Text(
                          formatTimestamp(order.timestamp.toString()),
                          style: normalTextRubik().copyWith(
                            color: ColorConsts.neutral,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }
  }
}
