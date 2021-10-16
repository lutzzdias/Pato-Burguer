import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:provider/provider.dart';

class Filtro extends StatefulWidget {
  const Filtro({Key? key}) : super(key: key);

  @override
  _FiltroState createState() => _FiltroState();
}

class _FiltroState extends State<Filtro> {
  final List<bool> isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, left: 15, right: 15),
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
              padding: const EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: const Text(
                "PROMOÇÕES",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: const Text(
                "CARNE",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: const Text(
                "FRANGO",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: const Text(
                "COMBOS",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 6, right: 6),
              child: const Text(
                "BEBIDAS",
                textAlign: TextAlign.center,
              ),
            ),
          ],
          onPressed: (int index) {
            FirebaseMenu fireMenu =
                Provider.of<FirebaseMenu>(context, listen: false);

            fireMenu.getInfoFromFirebase;
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < isSelected.length;
                  buttonIndex++) {
                if (buttonIndex == index) {
                  isSelected[buttonIndex] = true;
                } else {
                  isSelected[buttonIndex] = false;
                }
              }
            });
          },
        ),
      ),
    );
  }
}
