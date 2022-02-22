import 'package:flutter/material.dart';
import 'constants/app_colors.dart';
import 'ui/home/home_page.dart';
import 'ui/theming/app_theme.dart';



class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica Neue',
      ),
      home: AppTheme(
        data: AppThemeData.defaultWithSwatch(AppColors.red),
        child:  HomePage3(),
      ),
    );
  }
}