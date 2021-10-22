import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:pato_burguer/shared/themes/custom_icons.dart';
import 'package:pato_burguer/shared/themes/redes_sociais_icons.dart';
import 'package:provider/provider.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);

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
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.fullWhite,
            ),
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
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 30,
                  top: 15,
                  bottom: 7,
                ),
                child: Text(
                  "Endereço: ",
                  style: AppTextStyles.contactTitle,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  fireMenu.getRua(),
                  style: AppTextStyles.contactText,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  fireMenu.getCidade(),
                  style: AppTextStyles.contactDetail,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: AppColors.line,
                      height: 1,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 30,
                  top: 15,
                  bottom: 7,
                ),
                child: Text(
                  "Horários de Funcionamento: ",
                  style: AppTextStyles.contactTitle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      fireMenu.getSemanaNome(),
                      style: AppTextStyles.contactText,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      fireMenu.getSemanaHorario(),
                      style: AppTextStyles.contactDetail,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      fireMenu.getSabNome(),
                      style: AppTextStyles.contactText,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      fireMenu.getSabHorario(),
                      style: AppTextStyles.contactDetail,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 30),
                    child: Text(fireMenu.getDomNome(),
                        style: AppTextStyles.contactText),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      fireMenu.getDomHorario(),
                      style: AppTextStyles.contactDetail,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: AppColors.line,
                      height: 1,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 30,
                  top: 15,
                  bottom: 10,
                ),
                child: Text(
                  "Faça seu pedido em: ",
                  style: AppTextStyles.contactTitle,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 5),
                    child: Icon(
                      RedesSociais.whatsapp,
                      color: AppColors.orangeMedium,
                    ),
                  ),
                  Text(
                    fireMenu.getNumCelular(),
                    style: AppTextStyles.contactInfo,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  left: 30,
                  top: 20,
                  bottom: 10,
                ),
                child: Text(
                  "Redes Sociais: ",
                  style: AppTextStyles.contactTitle,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 5),
                    child: Icon(
                      RedesSociais.facebook_square,
                      color: AppColors.orangeMedium,
                    ),
                  ),
                  Text(
                    fireMenu.getFacebook(),
                    style: AppTextStyles.contactInfo,
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 5),
                    child: Icon(
                      RedesSociais.instagram,
                      color: AppColors.orangeMedium,
                    ),
                  ),
                  Text(
                    fireMenu.getInstagram(),
                    style: AppTextStyles.contactInfo,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
