import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/login/login_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class AlterarSenha extends StatefulWidget  {
  AlterarSenha({Key? key}) : super(key: key);

  @override
  _AlterarSenhaState createState() => _AlterarSenhaState();

}

class _AlterarSenhaState extends State<AlterarSenha> {
  @override
  Widget build(BuildContext context){
   final size = MediaQuery.of(context).size;
   return Scaffold(
     appBar: AppBar(
       title: Padding(
         padding: const EdgeInsets.all(40.0),
         child: Text('Alterar Senha', style: AppTextStyles.appBar,),
       ),
       backgroundColor: AppColors.orangeDark,
       shadowColor: AppColors.orangeDark,
       foregroundColor: AppColors.orangeDark,
       elevation: 0,
       leading: 
         IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Icon(Icons.arrow_back_ios),
          ),
          color: AppColors.white,
          iconSize: 30,
          ),
          
       ),
     backgroundColor: AppColors.orangeDark,
     body: Stack(children: [
       Padding(
         padding: const EdgeInsets.only(top: 20, left: 21, right: 21),
         child: Container(
           height: size.height * 0.60,
           width: size.width * 0.88,
           decoration: BoxDecoration(
           color: AppColors.white,
           borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          child: Column(children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 21,right: 170),
                    child: Text('Senha Atual', style: AppTextStyles.contactTitle),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21, top:6),
              child: Container(
                height: size.height * 0.05,
                child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ''
                    ),
                  ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 21,right: 170),
                    child: Text('Nova Senha', style: AppTextStyles.contactTitle),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21, top:6),
              child: Container(
                height: size.height * 0.05,
                child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ''
                    ),
                  ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 21,right: 140),
                    child: Text('Confirmar Senha', style: AppTextStyles.contactTitle),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21, top:6),
              child: Container(
                height: size.height * 0.05,
                child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ''
                    ),
                  ),
              ),
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              },
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height*0.08,
                  width: size. width*0.76,
                  decoration: BoxDecoration(
                    color: AppColors.orangeDark,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(child: Text('Salvar', style: AppTextStyles.buttons)),
                ),
              ),),
          ],),
         ),
       ),
     ],),
   );
  }
}