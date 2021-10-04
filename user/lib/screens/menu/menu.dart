import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/menu/filtro.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(125),
          child: SafeArea(
            child: AppBar(
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
      body: null,
    );
  }
}
