import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/login/login_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:pato_burguer/widgets/auth_check.dart';


class AlterarSenha extends StatefulWidget  {
  AlterarSenha({Key? key}) : super(key: key);

  @override
  _AlterarSenhaState createState() => _AlterarSenhaState();


}

class _AlterarSenhaState extends State<AlterarSenha> {
  bool visibilidade = false;
  bool visibilidade1 = false;
  bool visibilidade2 = false;
  // ignore: unused_element
  void _toggle(){
    setState(() {
      visibilidade = !visibilidade;
    });
  }
    void _toggle1(){
    setState(() {
      visibilidade1 = !visibilidade1;
    });
  }
    void _toggle2(){
    setState(() {
      visibilidade2 = !visibilidade2;
    });
  }
  @override
  Widget build(BuildContext context){
   final size = MediaQuery.of(context).size;
   return Scaffold(
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
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AuthCheck()),
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
     body: SingleChildScrollView(
       child:
     Stack(children: [
       Padding(
         padding: const EdgeInsets.only(top:30),
         child: Center(
           child: Container(
             height: size.height * 0.60,
             width: size.width * 0.88,
             decoration: BoxDecoration(
             color: AppColors.white,
             borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 21,right: 170),
                    child: Text('Senha Atual', style: AppTextStyles.contactTitle),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, right: 21),
                child: Container(
                  height: size.height * 0.05,
                  child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                        contentPadding: EdgeInsets.all(6),
                        border: OutlineInputBorder(),
                        labelText: '',
                        suffixIcon: IconButton(
                          padding: EdgeInsets.only(bottom: 0.5, top: 0.5),
                          onPressed: _toggle,
                           icon: Icon(visibilidade ? Icons.visibility : Icons.visibility_off_outlined, color: AppColors.orangeDark),
                           alignment: AlignmentDirectional.center,
                           ),
                      ),
                      obscureText: !visibilidade,
                    ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 21,right: 170),
                    child: Text('Nova Senha', style: AppTextStyles.contactTitle),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, right: 21, top: 6),
                child: Container(
                  height: 30,
                  child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                        contentPadding: EdgeInsets.all(6),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.orangeDark)
                        ),
                        hoverColor: AppColors.orangeDark,
                        suffixIcon: IconButton(
                          padding: EdgeInsets.only(bottom: 0.5, top: 0.5),
                          onPressed: _toggle1,
                           icon: Icon(visibilidade1 ? Icons.visibility : Icons.visibility_off_outlined, color: AppColors.orangeDark),
                           ),
                      ),
                      obscureText: !visibilidade1,
                    ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 21,right: 140),
                    child: Text('Confirmar Senha', style: AppTextStyles.contactTitle),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, right: 21, top: 6),
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.05,
                      child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                            contentPadding: EdgeInsets.all(6),
                            border: OutlineInputBorder(),
                            labelText: '',
                            suffixIcon: IconButton(
                              padding: EdgeInsets.only(bottom: 0.5, top: 0.5),
                              onPressed: _toggle2,
                               icon: Icon(visibilidade2 ? Icons.visibility : Icons.visibility_off_outlined, color: AppColors.orangeDark,),
                               alignment: AlignmentDirectional.center,
                               ),
                          ),
                          obscureText: !visibilidade2,
                        ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                child:
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
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
                ),),
            ],),
           ),
         ),
       ),
     ],),
     ),
   );
  }
}