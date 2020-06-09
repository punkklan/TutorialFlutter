import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home/home_view.dart';
import 'pages/page2/page2_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    namedRoutes: {
      '/' : GetRoute(page: HomePage()),
      '/second' : GetRoute(page: Page2()),
    },
  ));
}
