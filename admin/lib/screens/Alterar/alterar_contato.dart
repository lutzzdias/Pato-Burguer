import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:pato_burguer/shared/themes/redes_sociais_icon.dart';
import 'package:provider/provider.dart';

class AlterarContato extends StatelessWidget {
  const AlterarContato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);
    final size = MediaQuery.of(context).size;
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
              color: AppColors.white,
            ),
          ),
          title: Text(
            "Contato",
            style: AppTextStyles.appBar,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              // padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 1,
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
                  height: size.height * 0.08,
                  width: size.height * 0.6,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, bottom: 20, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getRua(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                ),
                Container(
                  height: size.height * 0.08,
                  width: size.height * 0.6,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, bottom: 20, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getCidade(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
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
                      height: size.height * 0.06,
                      width: size.height * 0.3,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getSemanaNome(), fillColor: AppColors.orangeLight, hoverColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: size.height * 0.06,
                        width: size.height * 0.2,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 10, right: 10),
                        child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getSemanaHorario(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.height * 0.3,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getSabNome(), fillColor: AppColors.orangeLight, hoverColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: size.height * 0.06,
                        width: size.height * 0.2,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 10, right: 10),
                        child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getSabHorario(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.height * 0.3,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getDomNome(), fillColor: AppColors.orangeLight, hoverColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: size.height * 0.06,
                        width: size.height * 0.2,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(bottom: 10, right: 10),
                        child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getDomHorario(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
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
                    bottom: 5,
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
                  Container(
                    height: size.height * 0.05,
                  width: size.height * 0.50,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, bottom: 0, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getNumCelular(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                  ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(
                    left: 30,
                    top: 10,
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
                  Container(
                    height: size.height * 0.05,
                  width: size.height * 0.50,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, bottom: 5, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getFacebook(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
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
                  Container(
                    height: size.height * 0.05,
                  width: size.height * 0.50,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, bottom: 5, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                      labelText: fireMenu.getInstagram(), fillColor: AppColors.orangeLight,
                      labelStyle: AppTextStyles.LabelContato,
                      suffixIcon: Icon(Icons.edit, color: AppColors.orangeLight,),
                    ),
                  )
                  ),
                  ],
                ),
                  Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 30),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                              height: size.height*0.08,
                              width: size.width*0.76,
                              decoration: BoxDecoration(
                                color: AppColors.orangeDark,
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                                child: Center(child: Text('Salvar', style: AppTextStyles.buttons)),
                            ),
                        ),
                      ),    
              ],
            ),
          ],
        ),
      ),
    );
  }
}
