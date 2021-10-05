import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/menu/filtro.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(125),
          child: SafeArea(
            child: AppBar(
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                title: Text(
                  "Cardápio",
                  style: AppTextStyles.appBar,
                ),
                centerTitle: true,
                backgroundColor: AppColors.orangeDark,
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: SizedBox(height: 40, child: Filtro()),
                )),
          )),
      body: Container(
          // padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.infinity,
          color: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                )),
          )),
    );
  }
}
