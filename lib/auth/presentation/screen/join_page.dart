import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:order_tracker/auth/logic/google_auth/provider.dart';
import 'package:order_tracker/auth/logic/google_auth/state.dart';
import 'package:order_tracker/core/constant/color_const.dart';
import 'package:order_tracker/core/constant/image_const.dart';
import 'package:order_tracker/core/constant/theme.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        backgroundColor: ColorConsts.white,
        body: Container(
          width: size.width,
          height: size.height,
          color: ColorConsts.white,
          child: Stack(
            children: [
              Positioned(
                top: 150.0.h,
                left: size.width * 0.1,
                child: SizedBox(
                  height: 400.0.h,
                  width: 400.0.w,
                  child: Image.asset(
                    ImageConst().foodImage,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorConsts.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0.r),
                      topRight: Radius.circular(50.0.r),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33818288),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  height: 300.0.h,
                  width: size.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.0.h, horizontal: 18.0.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.0.verticalSpace,
                        Text(
                          "Join Us",
                          style: largestTextRubik(),
                        ),
                        100.0.verticalSpace,
                        Consumer(builder: (context, ref, child) {
                          return CustonGoogleBtn(
                            isLoading: ref.watch(googleAuthStateProvider).isLoading,
                            size: size,
                            onTap: () {
                              ref
                                  .watch(googleAuthStateProvider.notifier)
                                  .googleAuth(context: context);
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustonGoogleBtn extends StatelessWidget {
  final void Function()? onTap;
  final bool? isLoading;
  const CustonGoogleBtn({
    super.key,
    required this.size,
    this.onTap, this.isLoading,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: ColorConsts.white,
        border: Border.all(
          color: ColorConsts.neutral,
          width: 3.0.w,
        ),
        borderRadius: BorderRadius.circular(50.0.r),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0.r),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AnimatedSize(
              duration: const Duration(milliseconds: 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageConst().googleIcon),
                  16.0.horizontalSpace,
                  Text(
                    "Join with Google",
                    style: normalTextRubik(),
                  ),
                  16.0.horizontalSpace,
                  if(isLoading == true)
                  SizedBox(
                    height: 20.0.h,
                    width: 20.0.w,
                    child: const CircularProgressIndicator.adaptive(
                      valueColor:  AlwaysStoppedAnimation<Color>(ColorConsts.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
