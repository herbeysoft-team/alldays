
import 'dart:async';

import 'package:alldays/Pages/food/popular_food_detail.dart';
import 'package:alldays/Pages/food/recommended_food_detail.dart';
import 'package:alldays/Pages/home/food_page_body.dart';
import 'package:alldays/controller/popular_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
        home:MainFoodPage(),


    );
  }
}
