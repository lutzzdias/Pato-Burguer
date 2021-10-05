import 'package:flutter/material.dart';
import 'package:pato_burguer/shared/themes/app_colors.dart';
import 'package:pato_burguer/shared/themes/app_text_styles.dart';

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
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
          backgroundColor: AppColors.orangeDark,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lunch_dining_rounded),
          label: 'Lanches',
          backgroundColor: AppColors.orangeDark,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Bebidas',
          backgroundColor: AppColors.orangeDark,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Combos',
          backgroundColor: AppColors.orangeDark,
        ),
      ],
      currentIndex: _selectedScreen,
      selectedItemColor: AppColors.fullWhite,
      unselectedItemColor: AppColors.white,
      selectedLabelStyle: AppTextStyles.homeBarSelected,
      unselectedLabelStyle: AppTextStyles.homeBarOption,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      elevation: 0,
    );
  }
}
