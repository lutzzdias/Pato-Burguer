import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/Alterar/alterar_item.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AlterarItem()));},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.8),
              blurRadius: 2,
              spreadRadius: 0.25,
              offset: Offset(0, 1.5),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: AppColors.orangeLight,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 95,
                  child: Container(
                    decoration: BoxDecoration(
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
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    height: 95,
                    width: 150,
                    child: Image.asset(
                      AppImages.PatoBaconSolo,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  "X-Pato Burguer",
                  style: AppTextStyles.itemName,
                ),
                RichText(
                  text: TextSpan(
                      text: "R\$ ",
                      style: AppTextStyles.itemCifrao,
                      children: [
                        TextSpan(
                          text: "0,00",
                          style: AppTextStyles.itemPrice,
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){{Navigator.push(context, MaterialPageRoute(builder: (context) => AlterarItem()));}},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.8),
              blurRadius: 2,
              spreadRadius: 0.25,
              offset: Offset(0, 1.5),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: AppColors.orangeLight,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 95,
                  child: Container(
                    decoration: BoxDecoration(
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
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    height: 95,
                    width: 150,
                    child: Image.asset(
                      AppImages.PatoBaconSolo,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  "X-Pato Calabresa",
                  style: AppTextStyles.itemName,
                ),
                RichText(
                  text: TextSpan(
                      text: "R\$ ",
                      style: AppTextStyles.itemCifrao,
                      children: [
                        TextSpan(
                          text: "0,00",
                          style: AppTextStyles.itemPrice,
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

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
            offset: Offset(0, 1.5),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  height: 95,
                  width: 150,
                  child: Image.asset(
                    AppImages.PatoCombo,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                "X-Combuloso",
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: "0,00",
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

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

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
            offset: Offset(0, 1.5),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  height: 95,
                  width: 150,
                  child: Image.asset(
                    AppImages.PatoFrango,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                "X-Pato Frango",
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: "0,00",
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

class Item5 extends StatelessWidget {
  const Item5({Key? key}) : super(key: key);

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
            offset: Offset(0, 1.5),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  height: 95,
                  width: 150,
                  child: Image.asset(
                    AppImages.Guarana,
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                "Guaraná Lata",
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: "0,00",
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

class Item6 extends StatelessWidget {
  const Item6({Key? key}) : super(key: key);

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
            offset: Offset(0, 1.5),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  height: 95,
                  width: 150,
                  child: Image.asset(
                    AppImages.Coca,
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                "Coca Lata",
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: "0,00",
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

class Item7 extends StatelessWidget {
  const Item7({Key? key}) : super(key: key);

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
            offset: Offset(0, 1.5),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  height: 95,
                  width: 150,
                  child: Image.asset(
                    AppImages.guaravita,
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                "Guaravita",
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: "0,00",
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

class Item8 extends StatelessWidget {
  const Item8({Key? key}) : super(key: key);

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
            offset: Offset(0, 1.5),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  height: 95,
                  width: 150,
                  child: Image.asset(
                    AppImages.bare,
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                "Baré Lata",
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: "0,00",
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


class Item9 extends StatelessWidget {
  const Item9({Key? key}) : super(key: key);

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
            offset: Offset(0, 1.5),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: AppColors.orangeLight,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  height: 95,
                  width: 150,
                  child: Image.asset(
                    AppImages.PepsiTwist,
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Text(
                "Pepsi Twist Lata",
                style: AppTextStyles.itemName,
              ),
              RichText(
                text: TextSpan(
                    text: "R\$ ",
                    style: AppTextStyles.itemCifrao,
                    children: [
                      TextSpan(
                        text: "0,00",
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
