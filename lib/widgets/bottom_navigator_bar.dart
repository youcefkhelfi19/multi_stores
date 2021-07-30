import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:multi_stores/app_colors.dart';
import 'package:multi_stores/screens/account.dart';
import 'package:multi_stores/screens/favorite.dart';
import 'package:multi_stores/screens/home_screen.dart';
import 'package:multi_stores/screens/orders.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key key}) : super(key: key);

  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  List<Widget> tabs = [];
  int currentTabIndex = 0;
  @override
  void initState() {
    tabs = [HomeScreen(),Favorite(),Orders(),Account()];

    super.initState();
  }
  void selectTab(int index){
    setState(() {
      currentTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true ,
      body:tabs[currentTabIndex],
      bottomNavigationBar: FloatingNavbar(

        backgroundColor: AppColors.black,
        borderRadius: 30,
        onTap:selectTab,
         itemBorderRadius: 50,
         currentIndex: currentTabIndex,
        items: [
          FloatingNavbarItem(icon: Entypo.shop),
          FloatingNavbarItem(icon: Entypo.heart),
          FloatingNavbarItem(icon: Entypo.text_document),
          FloatingNavbarItem(icon: Entypo.user),
        ],
      )

    );
  }
}
