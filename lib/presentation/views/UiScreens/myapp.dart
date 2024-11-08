


import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:restoocom/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RESTO.COM',
      getPages: Routes.pages,
      initialRoute: Routes.loginscreen,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          textTheme: const TextTheme(

            headlineLarge: TextStyle(
              color: Colors.black,
              fontSize: 37,
              fontWeight: FontWeight.w500,
            ),



              labelLarge: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ))),
    );
  }
}
