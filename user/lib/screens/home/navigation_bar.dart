import 'package:flutter/material.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';
import 'package:pato_burguer/shared/themes/custom_icons.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedScreen = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedScreen,
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
          icon: Icon(CustomIcons.icon_home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.icon_burguer),
          label: 'Lanches',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.icon_drink),
          label: 'Bebidas',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.icon_combo),
          label: 'Combos',
        ),
      ],
    );
  }
}
