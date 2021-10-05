import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/home/home.dart';
import 'package:pato_burguer/screens/menu/menu.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pato Burguer',
      theme: ThemeData(primaryColor: AppColors.white),
      home: const Home(),
    );
  }
}
