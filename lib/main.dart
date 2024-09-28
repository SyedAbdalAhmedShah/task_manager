import 'package:flutter/material.dart';
import 'package:task_manager/constants/app_colors.dart';
import 'package:task_manager/views/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
        textTheme: TextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const Onboarding(),
    );
  }
}
