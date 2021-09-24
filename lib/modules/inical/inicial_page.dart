

import 'package:flutter/material.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';

class InicialPage extends StatefulWidget{
  InicialPage({Key? key}) : super(key: key);


  @override
  _InicialPageState createState() => _InicialPageState();
}
class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Pato Burguer')),
        ),
      backgroundColor: AppColors.orangeDark,
      body: Stack(children: [
        Container(
          width: size.width,
          height: size.height * 0.9,
          color: AppColors.white,
          ),
      ],),
    );
  }
}
