import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_05/pages/dashboard_nav.dart';
import 'package:pas1_mobile_11pplg2_05/pages/login_page.dart';
import 'package:pas1_mobile_11pplg2_05/bindings/bindings.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
      
        GetPage( name: '/', page: () => LoginPage()),
        GetPage( name: '/dashboard', page: () => DashboardNav(),
        binding: MyBindings()
        ),
      ],

    );
  }
}