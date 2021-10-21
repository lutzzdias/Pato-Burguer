import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/menu/item.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class PromocaoDesign extends StatelessWidget {
  final Item item;

  const PromocaoDesign({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(clipBehavior: Clip.none, children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.fullWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.8),
                        blurRadius: 1,
                        spreadRadius: 0.15,
                        offset: Offset(-0.5, 1),
                      ),
                    ]),
                height: 85,
                width: MediaQuery.of(context).size.width / 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        item.nome,
                        style: AppTextStyles.itemName,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: item.desconto.toString() + "% ",
                          style: AppTextStyles.salePercentage,
                          children: <TextSpan>[
                            TextSpan(
                                text: "de desconto",
                                style: AppTextStyles.saleText)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: "R\$",
                          style: AppTextStyles.itemCifraoHome,
                          children: <TextSpan>[
                            TextSpan(
                              text: item.preco.toString() + " ",
                              style: AppTextStyles.itemPrice,
                            ),
                            TextSpan(
                              text: "R\$",
                              style: AppTextStyles.itemCifraoSale,
                            ),
                            TextSpan(
                              text: item.precoAntigo.toString(),
                              style: AppTextStyles.itemPriceSale,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
        Positioned(
          left: MediaQuery.of(context).size.width / 2.5,
          top: -MediaQuery.of(context).size.height / 30,
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 4.7,
            child: Image.asset(
              'assets/images/' + item.nomeImagem + '.png',
              scale: 2,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ]),
    );
  }
}
