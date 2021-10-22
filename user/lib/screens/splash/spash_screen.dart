import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_images.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  int duration = 0;
  String goToPage;

  SplashScreen({Key? key, required this.goToPage, required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseMenu fireMenu = Provider.of<FirebaseMenu>(context, listen: false);

    Future.delayed(Duration(seconds: this.duration), () async {
      FirebaseApp app = await Firebase.initializeApp();

      fireMenu.getInfoFromFirebase().then(
        (value) {
          Navigator.pushNamed(context, "~/home");
        },
      );
    });

    return Scaffold(
      body: Container(
        color: AppColors.orangeDark,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Align(
                  alignment: Alignment.center,
                  child:
                      Image.asset(AppImages.LogoPato2, fit: BoxFit.fitHeight),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 200,
                height: 200,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.fullWhite.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
