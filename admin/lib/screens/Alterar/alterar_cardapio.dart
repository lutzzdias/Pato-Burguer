import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:provider/provider.dart';

import 'item_adm.dart';
import 'item_designe.dart';

class AlterarCardapio extends StatefulWidget {
  const AlterarCardapio({Key? key}) : super(key: key);

  @override
  _AlterarCardapioState createState() => _AlterarCardapioState();
  
}

class _AlterarCardapioState extends State<AlterarCardapio> {
  final List<bool> isSelected = [true];

  List<Item> itens = [];

  @override
  void initState() {
    super.initState();
    itens = getList();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);
    itens = fireMenu.getItens();
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
                 child: GridView.builder(
            padding: const EdgeInsets.all(30),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              childAspectRatio: 135 / 155,
            ),
            itemCount: itens.length,
            itemBuilder: (context, index) {
              return ItemDesign(item: itens[index]);
            },
          )
                 ),
             ),
         ],)
         ),
    );
  }
  List<Item> getList(){
    
FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);

return fireMenu.getItens();
  }
}
