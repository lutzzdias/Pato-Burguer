import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/screens/Alterar/alterar_cardapio.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class AlterarItem extends StatefulWidget {
  const AlterarItem({Key? key}) : super(key: key);

  @override
  _AlterarItemState createState() => _AlterarItemState();

}

class _AlterarItemState extends State<AlterarItem> {
  final formKey = GlobalKey<FormState>();
  final nome = TextEditingController();
  final senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
       appBar: AppBar(
       title: Padding(
         padding: const EdgeInsets.only(left: 60),
         child: Text('Cardápio', style: AppTextStyles.appBar,),
       ),
       backgroundColor: AppColors.orangeDark,
       shadowColor: AppColors.orangeDark,
       foregroundColor: AppColors.orangeDark,
       elevation: 0,
       leading: 
         IconButton(
          onPressed: (){{Navigator.push(context, MaterialPageRoute(builder: (context) => AlterarCardapio()));}},
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Icon(Icons.arrow_back_ios),
          ),
          color: AppColors.white,
          iconSize: 30,
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline_outlined, color: AppColors.white, size: 30,)
            )
          ],
         
       ),
              body: SingleChildScrollView(
         child: Stack(children: [
           SizedBox(height: 60,),
           Container(
             padding: EdgeInsets.only(left: 0.8, right: 0.8, top: 135),
             height: MediaQuery.of(context).size.height*1.0,
             width: double.infinity,
             color: Colors.transparent,
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(15),
                   topRight: Radius.circular(15),
                  )
                 ),

                 child: Column(
                   children: [
                  Container(
                   child: Row(
                     children: [
                       Padding(
                      padding: const EdgeInsets.only(top: 60, left: 27, right: 0),
                     child: Text('Nome', 
                         style:
                          TextStyle(
                           fontSize: 18,
                           fontFamily: 'roboto',
                           fontWeight: FontWeight.bold),
                           textAlign: TextAlign.left,
                           ),
                       ),
                     ],
                   )),
                           Padding(
                             padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                             child: Container(
                               height: 36,
                               width: 313,
                               child: TextFormField(
                                 controller: nome,
                                 decoration: InputDecoration(
                                       border: OutlineInputBorder(),
                                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                                       labelText: 'X-Pato Burguer', labelStyle: AppTextStyles.NomeAlteravel,
                                 ),
                               ),
                             ),
                           ),
                           Container(
                   child: Row(
                     children: [
                       Padding(
                      padding: const EdgeInsets.only(top: 3, left: 27, right: 0),
                     child: Text('Detalhes', 
                         style:
                          TextStyle(
                           fontSize: 18,
                           fontFamily: 'roboto',
                           fontWeight: FontWeight.bold),
                           textAlign: TextAlign.left,
                           ),
                       ),
                     ],
                   )),
                           Padding(
                             padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                             child: Container(
                               height:60,
                               width: 313,
                               child: TextFormField(
                                 decoration: InputDecoration(
                                       border: OutlineInputBorder(),
                                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                                       labelText: 'Aqui será a descrição do produto', labelStyle: AppTextStyles.NomeAlteravel2,
                                 ),
                               ),
                             ),
                           ), 
                           Container(
                   child: Row(
                     children: [
                       Padding(
                      padding: const EdgeInsets.only(top: 3, left: 27, right: 0),
                     child: Text('Ingredientes', 
                         style:
                          TextStyle(
                           fontSize: 18,
                           fontFamily: 'roboto',
                           fontWeight: FontWeight.bold),
                           textAlign: TextAlign.left,
                           ),
                       ),
                     ],
                   )),  
                           Padding(
                             padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                             child: Container(
                               height:60,
                               width: 313,
                               child: TextFormField(
                                 decoration: InputDecoration(
                                       border: OutlineInputBorder(),
                                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                                       labelText: 'Coloque aqui os ingredientes do produto', labelStyle: AppTextStyles.NomeAlteravel2,
                                 ),
                               ),
                             ),
                           ), 
                  Container(
                   child: Row(
                     children: [
                       Padding(
                      padding: const EdgeInsets.only(top: 3, left: 27, right: 0),
                     child: Text('Preço', 
                         style:
                          TextStyle(
                           fontSize: 18,
                           fontFamily: 'roboto',
                           fontWeight: FontWeight.bold),
                           textAlign: TextAlign.left,
                           ),
                       ),
                     ],
                   )),
                           Padding(
                             padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                             child: Container(
                               height: 36,
                               width: 313,
                               child: TextFormField(
                                  
                                 decoration: InputDecoration(
                                       border: OutlineInputBorder(),
                                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                                       prefixText: "R\$ ", labelText: '0,00', labelStyle: AppTextStyles.NomeAlteravel,
                                       prefixStyle: TextStyle(color: AppColors.orangeDark)
                                 ),
                                 
                               ),
                             ),
                           ),    
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            FirebaseFirestore.instance.collection('patoBurguer').doc('lanches').update({'nome': nome});
                            },
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
                 ),
              ),
              Image(image: AssetImage(AppImages.PatoBaconSolo)),
          ],
        ),
      ),
    );
  }
}