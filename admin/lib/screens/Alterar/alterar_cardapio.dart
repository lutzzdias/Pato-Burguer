import 'package:flutter/material.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class AlterarCardapio extends StatelessWidget {
  const AlterarCardapio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
       appBar: AppBar(
       title: Padding(
         padding: const EdgeInsets.only(left: 40),
         child: Text('Alterar Senha', style: AppTextStyles.appBar,),
       ),
       backgroundColor: AppColors.orangeDark,
       shadowColor: AppColors.orangeDark,
       foregroundColor: AppColors.orangeDark,
       elevation: 0,
       leading: 
         IconButton(
          onPressed: (){},
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
           SizedBox(height: 80,),
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
                     padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 0,
                   ),
                   crossAxisCount: 2,
                   mainAxisSpacing: 20,
                   crossAxisSpacing: 20,
                   children: [
                    Container(
                      width: 134,
                       height: 168,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(16)),
                         color: AppColors.white,
                         boxShadow: [ BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 2)
                            ),
                          ],
                         ),
                       child: Padding(
                         padding: const EdgeInsets.only(bottom: 98),
                         child: Container(
                          decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                         color: AppColors.orangeLight
                         ),
                         ),
                       ),
                     
                     )
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
