import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/app/my_app_model.dart';
import '../../theme/app_colors.dart';
import '../navigation/main_navigation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  final MyAppModel model;
  static final mainNavigation = MainNavigation();

  const MyApp({Key? key, required this.model}) : super(key: key);

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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('en', 'En'),
      ],
      initialRoute: mainNavigation.initialRoute(model.isAuth),
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
