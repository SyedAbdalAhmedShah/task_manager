import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:task_manager/components/app_text_field.dart';
import 'package:task_manager/components/forgot_password.dart';
import 'package:task_manager/components/logo_image.dart';
import 'package:task_manager/components/or_divider.dart';
import 'package:task_manager/components/primary_button.dart';
import 'package:task_manager/components/secondary_button.dart';
import 'package:task_manager/components/signup_prompt.dart';
import 'package:task_manager/constants/app_colors.dart';
import 'package:task_manager/constants/app_strings.dart';
import 'package:task_manager/utils/extensions.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                  createAccount,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Gap(2.h),
                Text(
                  fullName,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: textColorSecondary,
                  ),
                ),
                const AppTextField(
                  hintText: enterFullName,
                  prefixIcon: Icons.person_2_outlined,
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
                  password,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: textColorSecondary,
                  ),
                ),
                const AppTextField(
                  hintText: password,
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: Icons.visibility_off,
                ),
                Gap(2.h),
                const ForgotPassword(),
                Gap(3.h),
                PrimaryButton(
                  text: signUp,
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
                SignupPrompt(
                  onPressed: () {
                    context.pop();
                  },
                  text: signIn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
