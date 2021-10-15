import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

import 'item_adm.dart';

class AlterarCardapio extends StatelessWidget {
  const AlterarCardapio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
       appBar: AppBar(
       title: Padding(
         padding: const EdgeInsets.only(left: 40),
         child: Text('Alterar Cardápio', style: AppTextStyles.appBar,),
       ),
       backgroundColor: AppColors.orangeDark,
       shadowColor: AppColors.orangeDark,
       foregroundColor: AppColors.orangeDark,
       elevation: 0,
       leading: 
         IconButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));},
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Icon(Icons.arrow_back_ios),
          ),
          color: AppColors.white,
          iconSize: 30,
          ),
       ),
       body: SingleChildScrollView(
         child: Stack(children: [
           SizedBox(height: 60,),
           Container(
             padding: EdgeInsets.all(1),
             height: MediaQuery.of(context).size.height*0.9,
             width: double.infinity,
             color: Colors.transparent,
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(15),
                   topRight: Radius.circular(15),
                 )),
                 child: Container(
                   width: 135,
                   height: 168,
                   child: GridView.count(
            padding: const EdgeInsets.all(25),
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            childAspectRatio: 135 / 155,
            children: [
              Item(),
              Item2(),
              Item3(),
              Item4(),
              Item5(),
              Item6(),
              Item7(),
              Item8(),
              Item9(),
            ],
          ),
                       )
                 ),
             ),
         ],)
         ),
    );
  }
}
