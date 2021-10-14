import 'package:flutter/material.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 9),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.orangeDark,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            "Contato",
            style: AppTextStyles.appBar,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.9,
            width: double.infinity,
            color: Colors.transparent,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
