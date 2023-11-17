import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:order_tracker/core/constant/color_const.dart';
import 'package:order_tracker/core/constant/theme.dart';
import 'package:order_tracker/core/enities/hive_entities/user_entity.dart';
import 'package:order_tracker/order_tracker/logic/provider.dart';
import 'package:order_tracker/order_tracker/presentation/widgets/custom_order_widget.dart';

import '../../../core/constant/hive_const.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  //var userDetailsBox = Hive.box<UserHive>(HiveConst.userDetailsBox);

  //UserHive? userHive;
  @override
  void initState() {
    //userHive = userDetailsBox.get(HiveConst.userDetailsKey);
    Future.delayed(Duration.zero, () {
      ref
          .watch(ablyNotifierProvider.notifier)
          .connectToChannel('order_channel');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        statusBarColor: ColorConsts.white,
      ),
      child: Scaffold(
        backgroundColor: ColorConsts.white,
        body: SafeArea(
          top: true,
          bottom: false,
          child: OrderWidget(),
        ),
      ),
    );
  }
}

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          52.verticalSpace,
          ValueListenableBuilder(
              valueListenable:
                  Hive.box<UserHive>(HiveConst.userDetailsBox).listenable(),
              builder: (context, box, widget) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 24.0.r,
                        backgroundColor: ColorConsts.gray20,
                        backgroundImage:
                            box.get(HiveConst.userDetailsKey)!.photo != null
                                ? NetworkImage(
                                    box.get(HiveConst.userDetailsKey)!.photo!)
                                : null),
                    5.0.horizontalSpace,
                    Text(
                      "Hello, ${box.get(HiveConst.userDetailsKey)!.displayName ?? "..."}",
                      style: largeTextRubik(),
                    ),
                  ],
                );
              }),
          20.0.verticalSpace,
          Text(
            "Available orders",
            style: semiLargeTextRubik().copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          48.0.verticalSpace,
          const CustomOrderWidget()
        ],
      ),
    );
  }
}
