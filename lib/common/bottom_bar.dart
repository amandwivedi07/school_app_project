import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:school/feature/account/account_screen.dart';
import 'package:school/feature/notification/screen/notification_screen.dart';

import '../feature/home/home_screen.dart';
import '../feature/search/screen/search_screen.dart';

class BottomBar extends StatelessWidget {
  static const String routeName = '/actualHome-screen';

  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        const HomeScreen(),
        const SearchScreen(),
        const NotificationScreen(),
        const AccountScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.search),
          title: ("Search"),
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.notifications_outlined),
          title: ("Notice"),
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.person),
          title: ("Account"),
          // activeColorPrimary: CupertinoColors.activeBlue,
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.black,
        )
      ];
    }

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: PersistentTabView(context,
          navBarHeight: 56,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          // backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(30.0),
              colorBehindNavBar: Colors.white,
              // border: Border.all(color: Colors.white)),
              border: Border.all(color: Colors.black45)),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          // navBarStyle: NavBarStyle.style9,
          navBarStyle: NavBarStyle.style14),
    ));
  }
}
