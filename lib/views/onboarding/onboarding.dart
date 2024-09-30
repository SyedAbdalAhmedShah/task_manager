import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:task_manager/components/logo_image.dart';
import 'package:task_manager/components/primary_button.dart';
import 'package:task_manager/constants/app_assets.dart';
import 'package:task_manager/constants/app_colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              const Row(
                children: [
                  LogoImage(),
                ],
              ),
              Gap(5.h),
              Container(
                width: 100.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  image: const DecorationImage(
                    image: AssetImage(onboardingImage),
                  ),
                ),
              ),
              Gap(5.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Manage your \nTask with',
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: '\nDayTask',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(5.h),
              PrimaryButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
