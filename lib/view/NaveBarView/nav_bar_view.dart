import 'package:e_learning_ui/Helper/navIcon/nav_icon.dart';
import 'package:e_learning_ui/view/HomeView/home_view.dart';
import 'package:flutter/material.dart';
import '../ MyLearningView/my_learning_view.dart';
import '../../Utils/colors.dart';
import '../SettingsView/settings_view.dart';
import '../WishlistView/wishlist_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {

  int currnentIndex = 0;

  List<Widget> pages = [
    HomeView(),
    MyLearningView(),
    WishlistView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currnentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.primaryTextColor,
          showUnselectedLabels: true,
          currentIndex: currnentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value){
            setState(() {
              currnentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: navIcon(
                  outline: "assets/NavBar/star.svg",
                  filled: "assets/NavBar/star_filled.svg",
                  index: 0,
                  currentIndex: currnentIndex,
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.primaryTextColor
              ),
              label: 'Featured',
            ),
            BottomNavigationBarItem(
              icon: navIcon(
                  outline: "assets/NavBar/play.svg",
                  filled: "assets/NavBar/play_filled.svg",
                  index: 1,
                  currentIndex: currnentIndex,
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.primaryTextColor
              ),
              label: 'My Learning',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currnentIndex == 2
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: currnentIndex == 2
                    ? AppColors.primaryColor
                    : AppColors.primaryTextColor,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
                icon: navIcon(
                    outline: "assets/NavBar/setting.svg",
                    filled: "assets/NavBar/setting_filled.svg",
                    index: 3,
                    currentIndex: currnentIndex,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.primaryTextColor
                ),
              label: 'Settings',
            ),
          ]
      ),
    );
  }
}
