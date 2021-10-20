import 'package:flutter/material.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class PromocaoDesign extends StatelessWidget {
  const PromocaoDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 35),
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
                        "Nome do Hambúrguer",
                        style: AppTextStyles.itemName,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: "20% ",
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
                              text: "0,00 ",
                              style: AppTextStyles.itemPrice,
                            ),
                            TextSpan(
                              text: "R\$",
                              style: AppTextStyles.itemCifraoSale,
                            ),
                            TextSpan(
                              text: "0,00",
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
          left: MediaQuery.of(context).size.width / 2.6,
          top: -MediaQuery.of(context).size.height / 25,
          child: Image.asset(
            AppImages.PatoBaconSolo,
            scale: 2,
          ),
        ),
      ]),
    );
  }
}
