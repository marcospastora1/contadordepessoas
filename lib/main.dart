
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'home_binding.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Contador Premium',
      initialRoute: '/home',
      initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/home',
          page: () => const MyHomePage(),
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
