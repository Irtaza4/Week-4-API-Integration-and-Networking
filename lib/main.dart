import 'package:flutter/material.dart';
import 'package:internship_task_api/res/routes/app_routes.dart';
import 'package:internship_task_api/view/home/home_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.blue
          )

      ),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

