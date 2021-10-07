import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/home/navigation_bar.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:pato_burguer/shared/themes/custom_icons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
      body: Stack(
        children: [
          Container(
              // padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.9,
              width: double.infinity,
              color: Colors.transparent,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    )),
              )),
          Column(
            children: [
              Container(
                alignment: AlignmentDirectional.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: RichText(
                    text: TextSpan(
                      text: 'Pato ',
                      style: AppTextStyles.homeNameBlack,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Burguer',
                            style: AppTextStyles.homeSaleOrange),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Promoção",
                  style: AppTextStyles.homeNameBlack,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Semanal",
                  style: AppTextStyles.homeNameOrange,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 18,
                  ),
                  Stack(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 1.7,
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
                        height: 100,
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
                  ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 18,
                  ),
                  Stack(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 1.7,
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
                        height: 100,
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
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width / 3.5,
                      decoration: BoxDecoration(
                        color: AppColors.fullWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.8),
                            blurRadius: 2,
                            spreadRadius: 0.25,
                            offset: Offset(0, 1.5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            CustomIcons.icon_burguer,
                            size: 50,
                            color: AppColors.orangeDark,
                          ),
                          Text(
                            "Cardápio",
                            style: AppTextStyles.homeButtonOrange,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "~/menu");
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width / 3.5,
                      decoration: BoxDecoration(
                        color: AppColors.fullWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.8),
                            blurRadius: 2,
                            spreadRadius: 0.25,
                            offset: Offset(0, 1.5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            CustomIcons.icon_contact,
                            size: 50,
                            color: AppColors.orangeDark,
                          ),
                          Text(
                            "Contato",
                            style: AppTextStyles.homeButtonOrange,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "~/contact");
                    },
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
