import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/screens/menu/item.dart';
import 'package:pato_burguer/screens/menu/item_design.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<bool> isSelected = [true, false, false, false];
  List<Item> itens = [];

  @override
  void initState() {
    super.initState();
    itens = getList(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeDark,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(125),
        child: SafeArea(
          child: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.fullWhite,
              ),
            ),
            title: Text(
              "Cardápio",
              style: AppTextStyles.appBar,
            ),
            centerTitle: true,
            backgroundColor: AppColors.orangeDark,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: SizedBox(
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0, left: 15, right: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ToggleButtons(
                      isSelected: isSelected,
                      selectedColor: AppColors.orangeDark,
                      color: AppColors.fullWhite,
                      fillColor: AppColors.fullWhite,
                      renderBorder: false,
                      textStyle: AppTextStyles.menuOption,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "PROMOÇÕES",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          child: Text(
                            "LANCHES",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          child: Text(
                            "BEBIDAS",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          child: Text(
                            "COMBOS",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                      onPressed: (int index) {
                        setState(
                          () {
                            for (int buttonIndex = 0;
                                buttonIndex < isSelected.length;
                                buttonIndex++) {
                              if (buttonIndex == index) {
                                isSelected[buttonIndex] = true;
                                itens = getList(buttonIndex);
                              } else {
                                isSelected[buttonIndex] = false;
                              }
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            color: Colors.transparent,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
            ),
          ),
          GridView.builder(
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
          ),
        ],
      ),
    );
  }

  List<Item> getList(int buttonIndex) {
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);
    if (buttonIndex == 0) {
      return fireMenu.getPromocoes();
    } else if (buttonIndex == 1) {
      return fireMenu.getLanches();
    } else if (buttonIndex == 2) {
      return fireMenu.getBebidas();
    } else if (buttonIndex == 3) {
      return fireMenu.getCombos();
    }
    return fireMenu.getPromocoes();
  }
}
