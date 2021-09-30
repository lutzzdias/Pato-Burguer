import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pato_burguer/screens/home/home.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pato Burguer',
      theme: ThemeData(primaryColor: AppColors.white),
      home: const Home(),
    );
  }
}
