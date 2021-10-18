
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pato_burguer/screens/Alterar/alterar_cardapio.dart';
import 'package:pato_burguer/screens/Alterar/alterar_senha.dart';
import 'package:pato_burguer/screens/login/login_page.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/services/auth_service.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'meu_aplicativo.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),

    ],
    child: MeuAplicativo(),
    )
  );
}
