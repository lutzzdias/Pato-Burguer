import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/screens/contact/contact.dart';
import 'package:pato_burguer/screens/home/home.dart';
import 'package:pato_burguer/screens/menu/menu.dart';
import 'package:pato_burguer/screens/splash/spash_screen.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Provider(
      create: (_) => FirebaseMenu(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "~/",
      routes: {
        "~/": (context) => SplashScreen(goToPage: "~/home", duration: 1),
        "~/home": (context) => Home(),
        "~/menu": (context) => Menu(),
        "~/contact": (context) => Contact(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Pato Burguer',
      theme: ThemeData(primaryColor: AppColors.white),
      home: Home(),
    );
  }
}
