import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/Alterar/alterar_cardapio.dart';
import 'package:pato_burguer/screens/Alterar/alterar_contato.dart';
import 'package:pato_burguer/screens/Alterar/alterar_item.dart';
import 'package:pato_burguer/screens/login/login_page.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/widgets/auth_check.dart';
import 'package:provider/provider.dart';

import 'database/firebase_menu.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);

    fireMenu.getInfoFromFirebase();
    return MaterialApp(
      initialRoute: "~/",
      routes: {
        "~/contact": (context) => AlterarContato(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: AlterarContato()
    );
  }
}