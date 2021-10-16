import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/screens/contact/contact.dart';
import 'package:pato_burguer/screens/home/home.dart';
import 'package:pato_burguer/screens/menu/menu.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);

    fireMenu.getInfoFromFirebase();

    return MaterialApp(
      initialRoute: "~/",
      routes: {
        "~/": (context) => Home(),
        "~/menu": (context) => Menu(),
        "~/contact": (context) => Contact(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Pato Burguer',
      theme: ThemeData(primaryColor: AppColors.white),
      home: const Home(),
    );
  }
}
