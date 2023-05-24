import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/app/my_app.dart';
import 'package:themoviedb/widgets/app/my_app_model.dart';

void main() async {
  final model = MyAppModel();
  await model.checkAuth();
  runApp(
    MyApp(
      model: model,
    ),
  );
}
