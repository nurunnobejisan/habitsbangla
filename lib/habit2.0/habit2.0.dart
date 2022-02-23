
import 'package:flutter/material.dart';
import 'package:habitsbangla/habit2.0/pages/home_page/home_page.dart';
import 'package:get_it/get_it.dart';
import 'package:habitsbangla/habit2.0/services/theme_service.dart';
import 'services/theme_service.dart';



class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeService = GetIt.I.get<ThemeService>();

    return StreamBuilder<ThemeData>(
      stream: themeService.theme.stream,
      initialData: themeService.theme.value,
      builder: (context, snapshot) {
        return AnimatedTheme(

          duration: const Duration(milliseconds: 500),
          data: snapshot.data!,
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
            theme: snapshot.data,
            home: const HomePage()
          ),
        );
      }
    );
  }
}