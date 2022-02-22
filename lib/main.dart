import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habitsbangla/habit1.0/constants/app_assets.dart';
import 'package:habitsbangla/habit1.0/constants/app_colors.dart';
import 'package:habitsbangla/habit1.0/ui/theming/app_theme.dart';
import 'package:habitsbangla/home.dart';




void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.indigoAccent,
      systemNavigationBarColor: Colors.indigoAccent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica Neue',
      ),
      home: AppTheme(
        data: AppThemeData.defaultWithSwatch(AppColors.red),
        child: const HomePage2(),
      ),
    );
  }
}