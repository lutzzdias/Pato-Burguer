import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/screens/home/navigation_bar.dart';
import 'package:pato_burguer/screens/home/promocao_design.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
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
                height: 15,
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
                  PromocaoDesign(),
                  PromocaoDesign(),
                  PromocaoDesign(),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
