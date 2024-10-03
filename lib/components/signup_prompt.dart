import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_manager/constants/app_colors.dart';
import 'package:task_manager/constants/app_strings.dart';

class SignupPrompt extends StatelessWidget {
  const SignupPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dontHaveAccount,
          style: TextStyle(
            color: textColorSecondary,
            fontSize: 12.sp,
          ),
        ),
        TextButton(
          onPressed: () {
            // TODO: Implement navigation to sign up page
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text(
            signUpNow,
            style: TextStyle(
              color: primaryColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
