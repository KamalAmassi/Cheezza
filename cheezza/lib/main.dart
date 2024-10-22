import 'package:cheezza/model/login/register.dart';
import 'package:cheezza/view/auth/login.dart';
import 'package:cheezza/view/auth/login_email.dart';
import 'package:cheezza/view/card/card.dart';
import 'package:cheezza/view/home_page/category_detals.dart';
import 'package:cheezza/view/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/spalsh/spalsh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: spalsh(),
    );
  }
}
