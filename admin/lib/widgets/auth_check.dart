import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pato_burguer/screens/login/login_page.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/services/auth_service.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    if(auth.isLoading) 
    return loading();
    else if(auth.usuario == null) return LoginPage();
    else return WelcomePage();

  }
}

loading() {
  return Scaffold(
    body: Center(child: CircularProgressIndicator(),),
  );
}