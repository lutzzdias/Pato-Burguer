import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/menu/item.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class Info extends StatelessWidget {
  final Item? item;

  const Info({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Stack(
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
                    padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                    child: Container(
                      height: 36,
                      width: 313,
                      child: Text(item!.nome),
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
                    padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                    child: Container(
                      height: 60,
                      width: 313,
                      child: Text(item!.desc),
                    ),
                  ),
                  Container(
                      child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 3, left: 27, right: 0),
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
                    padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                    child: Container(
                      height: 36,
                      width: 313,
                      child: Text("R\$ " + item!.preco.toString()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height / 3,
            child: Image(
              image: AssetImage('assets/images/' + item!.nomeImagem + '.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
