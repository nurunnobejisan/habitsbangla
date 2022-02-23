import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:habitsbangla/habit1.0/constants/app_colors.dart';
import 'package:habitsbangla/habit1.0/ui/theming/app_theme.dart';
import 'package:habitsbangla/habit2.0/habit2.0.dart';
import 'package:habitsbangla/habit2.0/services/data_service.dart';
import 'package:habitsbangla/habit2.0/services/theme_service.dart';
import 'package:habitsbangla/habit2.0/widgets/life_cycle_handler.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dataService = DataService();
  await dataService.init();
  GetIt.I.registerSingleton(dataService);

  final themeService = ThemeService();
  await themeService.init();
  GetIt.I.registerSingleton(themeService);

  WidgetsBinding.instance!.addObserver(
      LifeCycleHandler(
          resumeCallBack: () async => themeService.updateThemeStatus(themeService.themeStatus)
      )
  );
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
        child: MyApp3(),
      ),
    );
  }
}