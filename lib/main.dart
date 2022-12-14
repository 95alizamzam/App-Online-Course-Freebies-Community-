import 'package:advanced_ui_project1/core/strings.dart';
import 'package:advanced_ui_project1/core/themes.dart';
import 'package:advanced_ui_project1/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      //! Whether to adapt the text according to the minimum of width and height
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: appName,
        theme: AppTheme.theme,
        home: HomeScreen(),
      ),
    );
  }
}
