import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:task_manager/components/app_text_field.dart';
import 'package:task_manager/components/logo_image.dart';
import 'package:task_manager/components/or_divider.dart';
import 'package:task_manager/components/primary_button.dart';
import 'package:task_manager/components/secondary_button.dart';
import 'package:task_manager/components/signup_prompt.dart';
import 'package:task_manager/constants/app_colors.dart';
import 'package:task_manager/constants/app_strings.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoImage(
                    size: 14.h,
                  ),
                ],
              ),
              Gap(2.h),
              Text(
                welcomeBack,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Gap(2.h),
              Text(
                email,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: textColorSecondary,
                ),
              ),
              const AppTextField(
                hintText: enterEmail,
                prefixIcon: Icons.email,
              ),
              Gap(3.h),
              Text(
                email,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: textColorSecondary,
                ),
              ),
              const AppTextField(
                hintText: password,
                prefixIcon: Icons.email,
                suffixIcon: Icons.visibility_off,
              ),
              Gap(2.h),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Implement forgot password functionality
                  },
                  child: Text(
                    forgotPassword,
                    style: TextStyle(
                      color: textColorSecondary,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              Gap(3.h),
              PrimaryButton(
                text: signIn,
                onPressed: () {},
              ),
              Gap(5.h),
              const OrDivider(),
              Gap(5.h),
              SecondaryButton(
                text: continueWithGoogle,
                onPressed: () {},
              ),
              Gap(1.h),
              const SignupPrompt(),
            ],
          ),
        ),
      ),
    );
  }
}
