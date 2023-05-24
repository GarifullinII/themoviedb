import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/app/my_app_model.dart';
import '../../theme/app_colors.dart';
import '../auth/auth_widget.dart';
import '../navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  final MyAppModel model;
  static final mainNavigation = MainNavigation();

  const MyApp({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const AuthWidget(),
      initialRoute: mainNavigation.initialRoute(model.isAuth),
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
