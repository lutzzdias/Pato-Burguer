import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/screens/Alterar/alterar_cardapio.dart';
import 'package:pato_burguer/screens/Alterar/item_adm.dart';
import 'package:pato_burguer/screens/login/welcome_page.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:provider/provider.dart';

class AlterarItem extends StatefulWidget {
  final Item? item;

  const AlterarItem({Key? key, this.item}) : super(key: key);

  @override
  _AlterarItemState createState() => _AlterarItemState();
  
}

class _AlterarItemState extends State<AlterarItem> {
  final nome = TextEditingController();
  final detalhes = TextEditingController();
  final preco = TextEditingController();


CollectionReference lanche= FirebaseFirestore.instance.collection('patoBurguer');

Future<void> updateNomeLanche() async {

  if (nome.text.length <= 0){
    return;
  }
else{
  if(widget.item!.tipo == 'lanches')
  return lanche
    .doc('laches')
    .update({'lanches.0.nome': nome.text})
    .then((value) => print("User Updated"))
    .catchError((error) => print("Failed to update user: $error"));
}
}
Future<void> updateDesc() async {

  if (detalhes.text.length <= 0){
    return;
  }
else{
  if(widget.item!.tipo == 'lanches')
  return lanche
    .doc('laches')
    .update({'lanches.0.desc': detalhes.text})
    .then((value) => print("User Updated"))
    .catchError((error) => print("Failed to update user: $error"));
}
}
Future<void> updatePreco() async {

  if (preco.text.length <= 0){
    return;
  }
else{
  if(widget.item!.tipo == 'lanches')
  return lanche
    .doc('laches')
    .update({'lanches.0.preco': preco.text})
    .then((value) => print("User Updated"))
    .catchError((error) => print("Failed to update user: $error"));
}
}
  @override
  Widget build(BuildContext context) {
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            'Cardápio',
            style: AppTextStyles.appBar,
          ),
        ),
        backgroundColor: AppColors.orangeDark,
        shadowColor: AppColors.orangeDark,
        foregroundColor: AppColors.orangeDark,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Icon(Icons.arrow_back_ios),
          ),
          color: AppColors.white,
          iconSize: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.only(left: 0.8, right: 0.8, top: 135),
              height: MediaQuery.of(context).size.height * 1.0,
              width: double.infinity,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 70, left: 27, right: 0),
                          child: Text(
                            'Nome',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 27, right: 22),
                      child: Container(
                        height: 36,
                        width: 313,
                        child: TextFormField(
                        controller: nome,
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                        labelText: widget.item!.nome, labelStyle: AppTextStyles.NomeAlteravel,
                          ),
                          ),
                      ),
                    ),
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 3, left: 27, right: 0),
                          child: Text(
                            'Detalhes',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 27, right: 22),
                      child: Container(
                          height: 60,
                          width: 313,
                          child: SingleChildScrollView(
                            child: TextFormField(
                        controller: detalhes,
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                        labelText: widget.item!.desc, labelStyle: AppTextStyles.NomeAlteravel2,
                          ),
                          ),
                          )),
                    ),
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 27, right: 0),
                          child: Text(
                            'Preço',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 27, right: 22),
                      child: Container(
                        height: 36,
                        width: 313,
                        child: TextFormField(
                                controller: preco,
                                decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.orangeDark)),
                                prefixText: "R\$ ", labelText: '0,00', labelStyle: AppTextStyles.NomeAlteravel, 
                                prefixStyle: TextStyle(color: AppColors.orangeDark)
                                 ),
                                 
                               ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 30),
                    child: InkWell(onTap: (){setState(() {
                            updateDesc(); updateNomeLanche(); updatePreco();
                            
                          });fireMenu.getInfoFromFirebase(); Navigator.push(context, MaterialPageRoute(builder: (context) => AlterarCardapio()));
                    },
                    child: Container(
                              height: size.height*0.08,
                              width: size.width*0.76,
                              decoration: BoxDecoration(
                                color: AppColors.orangeDark,
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                                child: Center(child: Text('Salvar', style: AppTextStyles.buttons)),
                    )
                    )
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height / 3,
              child: Image(
                image: AssetImage('assets/images/' + widget.item!.nomeImagem + '.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
