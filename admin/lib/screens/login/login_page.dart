
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pato_burguer/screens/login/alterar_senha.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget  {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
   final size = MediaQuery.of(context).size;
   return Scaffold(
     backgroundColor: AppColors.orangeDark,
     body: Container(
       width: size.width,
       height: size.height,
       child: Stack(
         alignment: AlignmentDirectional.topCenter,
        children: [
          //Image(image: AssetImage(AppImages.IconeAppUser), height: size.height * 0.25,),
         Center(
         child: Container(
           decoration: BoxDecoration(
             color: AppColors.white,
             borderRadius: BorderRadius.all(Radius.circular(7))
           ),
           width: size.width * 0.85,
           height: size.height * 0.60,
           child: Column(children: [
             Container(
               child: Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 50, left: 20, right: 0, bottom: 20),
                     child: Text('Login', 
                     style:
                      TextStyle(
                       fontSize: 20,
                       fontFamily: 'roboto',
                       fontWeight: FontWeight.bold),
                       textAlign: TextAlign.left,
                       ),
                   ),
                 ],
               )),
             Padding(
               padding: const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
               child: Container(
                 height: size.height * 0.07,
                 //color: Colors.red,
                 child: TextFormField(
                   decoration: InputDecoration(
                     
                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                     border: OutlineInputBorder(),
                     labelText: 'Usuário',
                     ),
                   ),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 5),
               child: Container(
                 height: size.height * 0.07,
                 //color: Colors.red,
                 child: TextFormField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                     labelText: 'Senha' 
                     ),
                     obscureText: true,
                   ),
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 7),
                   child: TextButton(
                     style: TextButton.styleFrom(
                       primary: AppColors.text),
                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AlterarSenha()),
                    );
                     },
                      child:
                       Text('Esqueceu a senha ?')),
                 ),
               ],
             ),
        
              InkWell(
                hoverColor: AppColors.white,
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage())
                );
                },
                child:
                Container(
               decoration: BoxDecoration(
               color: AppColors.orangeDark,
               borderRadius: BorderRadius.all(Radius.circular(20))
           ),
               height: size.height * 0.10,
               width: size.width * 0.75,
               child:
                Center(child: Text('Entrar', style: AppTextStyles.buttons,))
                ),)
           ],
           )
         ),
       ),
       Image(image: AssetImage(AppImages.LogoPato2), height: size.height * 0.30,),
       ],)
     ),
   );
  }
}