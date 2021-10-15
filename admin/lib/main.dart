
import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/Alterar/alterar_cardapio.dart';
import 'package:pato_burguer/screens/Alterar/alterar_senha.dart';
import 'package:pato_burguer/screens/login/login_page.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pato Burguer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.white),
      home: LoginPage(),
    );
  }
}