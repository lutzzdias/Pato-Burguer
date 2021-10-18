
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pato_burguer/screens/Alterar/alterar_senha.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/services/auth_service.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget  {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final senha = TextEditingController();

  bool isLogin = true;
  late String text;
  late String actionButton;
  late String toggleButton;

  @override
  void initState() {
    super.initState();
    setFormAction(bool acao){;
    setState((){
      isLogin = acao;
      if(isLogin){
        text = 'Login';
        actionButton = 'Entrar';
        toggleButton = 'Ainda não tem sua conta ? Cadastre-se agora.';
      }
      else{
        text = 'Crie Sua Conta';
        actionButton = 'Cadastrar';
        toggleButton = 'Voltar ao Login';
      }
    });
  }
  }

  login() async {
    try {
      await context.read<AuthService>().login(email.text, senha.text);
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
    }
  }
  registrar() async {
    try {
      await context.read<AuthService>().registrar(email.text, senha.text);
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  @override
  Widget build(BuildContext context){
   final size = MediaQuery.of(context).size;
   return Scaffold(
     backgroundColor: AppColors.orangeDark,
     body: SingleChildScrollView(
       child: Container(
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
             child: Form(
               key: formKey,
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
                       controller: email,
                       decoration: InputDecoration(
                         focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                         border: OutlineInputBorder(),
                         labelText: 'Usuário',
                         ),
                         keyboardType: TextInputType.emailAddress,
                         validator: (value){
                             if(value!.isEmpty){
                               return 'Informe o email corretamente!';
                             }
                             return null;
                         },
                       ),
                   ),
                 ),
                  Padding(
                   padding: const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 5),
                   child: Container(
                     height: size.height * 0.07,
                     //color: Colors.red,
                     child: TextFormField(
                       controller: senha,
                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                         labelText: 'Senha' 
                         ),
                         obscureText: true,
                         validator: (value){
                         if(value!.isEmpty){
                          return 'Informe a senha corretamente!';
                             }
                          else if(value.length < 6){
                            return 'Sua senha deve ter no mínimo 6 caracteres';
                          }
                            return null;
                         },
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
                    onTap: (){
                      if(formKey.currentState!.validate()){
                        if (isLogin){
                          login();
                        } else {
                          registrar();
                        }
                      }
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
               ),
             )
           ),
         ),
         Image(image: AssetImage(AppImages.LogoPato2), height: size.height * 0.30,),
         ],)
       ),
     ),
   );
  }
}
