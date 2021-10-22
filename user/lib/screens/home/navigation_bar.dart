import 'package:flutter/material.dart';
import 'package:pato_burguer/database/firebase_menu.dart';
import 'package:pato_burguer/screens/menu/item.dart';
import 'package:pato_burguer/screens/menu/menu.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:pato_burguer/shared/themes/custom_icons.dart';
import 'package:provider/provider.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedScreen = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedScreen = index;
      if (_selectedScreen == 2) {
        Navigator.pushNamed(context, '~/menu');
      } else if (_selectedScreen == 0) {
        Navigator.pushNamed(context, '~/contact');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      selectedItemColor: AppColors.fullWhite,
      unselectedItemColor: AppColors.orangeLight,
      selectedLabelStyle: AppTextStyles.homeBarSelected,
      unselectedLabelStyle: AppTextStyles.homeBarOption,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.orangeDark,
      items: [
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.icon_contact),
          label: 'Contato',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.icon_home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.icon_burguer),
          label: 'Cardápio',
        ),
      ],
    );
  }
}
