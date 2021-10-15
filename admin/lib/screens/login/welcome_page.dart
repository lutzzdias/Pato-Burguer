
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pato_burguer/screens/Alterar/alterar_cardapio.dart';
import 'package:pato_burguer/screens/Alterar/alterar_senha.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class WelcomePage extends StatefulWidget  {
  WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();

}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context){
   final size = MediaQuery.of(context).size;
   return Scaffold(
     backgroundColor: AppColors.white,
     body: 
     Container(
       child: Stack(
         children: [
           Container(
             alignment: AlignmentDirectional.topCenter,
              child: Padding(
               padding: 
               const EdgeInsets.only(top: 30),
               child: 
               RichText(
                 text: TextSpan(
                   text: 'Pato ',
                   style: AppTextStyles.homeNameBlack,
                   children: <TextSpan>[
                     TextSpan(text: 'Burguer', style: AppTextStyles.homeSaleOrange
                     ),
                   ],
                 ),),
             ),
           ),
           Center(
             child: Container(
               alignment: AlignmentDirectional.topStart,
               height: size.height * 0.6,
               width: size.height * 0.5,
               child: Padding(
                 padding: const EdgeInsets.only(bottom: 60),
                 child: Text('Bem vindo a \nÁrea Administrativa', style: AppTextStyles.homeNameBlack),
               )
             ),
           ),
          
          InkWell(
                hoverColor: AppColors.white,
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AlterarCardapio())
                );
                },
             child: Container(
               child: Center(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 200),
                       child: Container(
                         height: size.height * 0.09,
                         width: size.width * 0.7,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.15,
                              blurRadius: 1,
                              offset: Offset(-0.5, 4),
                              ),
                            
                          ]
                           ),
                          child: Center(child:
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: Row(
                              children: [
                                Text('Alterar Cardápio', style: AppTextStyles.homeButtonOrange),
                                Padding(
                                  padding: const EdgeInsets.only(left: 38),
                                  child: Icon(Icons.restaurant_menu_rounded, color: AppColors.orangeDark, size: 38,
                                  ),
                                )
                              ],
                            ),
                          )
                          ),
                     ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 30),
                       child: InkWell(
                        hoverColor: AppColors.white,
                        onTap: (){},
                         child: Container(
                           height: size.height * 0.09,
                           width: size.width * 0.7,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.15,
                                blurRadius: 1,
                                offset: Offset(-0.5, 4),
                                ),
                            ]
                             ),
                           child: Center(child:
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Row(
                                children: [
                                  Text('Alterar Contato', style: AppTextStyles.homeButtonOrange),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 45),
                                    child: Icon(Icons.phone, color: AppColors.orangeDark, size: 38,
                                    ),
                                  )
                                ],
                              ),
                            )
                            ),
                         ),
                       ),
                     ),Padding(
                       padding: const EdgeInsets.only(top: 30), 
                       child: InkWell(
                        hoverColor: AppColors.white,
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AlterarSenha()));},
                         child: Container(
                           height: size.height * 0.09,
                           width: size.width * 0.7,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.15,
                                blurRadius: 1,
                                offset: Offset(-0.5, 4),
                                ),
                              
                            ]
                             ),
                           child: Center(child:
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Row(
                                children: [
                                  Text('Alterar Senha', style: AppTextStyles.homeButtonOrange),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Icon(Icons.password_outlined, color: AppColors.orangeDark, size: 38,
                                    ),
                                  )
                                ],
                              ),
                            )
                            ),
                         ),
                       ),
                     ),
           
                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
     ),
   );
  }
}