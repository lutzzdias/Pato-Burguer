import 'package:flutter/material.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

import 'item_adm.dart';

class ItemDesign extends StatelessWidget {
  final Item item;

  const ItemDesign({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.8),
            blurRadius: 2,
            spreadRadius: 0.25,
            offset: const Offset(0, 1.5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 90,
                  width: 150,
                  child: Image.asset(
                    ('assets/images/' + item.nomeImagem + '.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                item.nome,
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: item.preco.toString(),
                        style: AppTextStyles.itemPrice,
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}