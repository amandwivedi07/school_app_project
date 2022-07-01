import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:school/common/profile_widget.dart';
import 'package:school/feature/auth/login_screen.dart';

import '../../common/bottom_bar.dart';
import '../../common/global_variable.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Account',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              pushNewScreenWithRouteSettings(
                context,
                settings: const RouteSettings(name: BottomBar.routeName),
                screen: const BottomBar(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
              // Navigator.pop(context);
            }),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          height: 20,
        ),
        const ProfileWidget(),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: const [
              Text(
                'General',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey),
              )
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          title: const Text(
            'About School',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 35,
            )
          ]),
          horizontalTitleGap: 1,
        ),
        GlobalVariables.divider,
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.info_outline,
            color: Colors.black,
          ),
          title: const Text(
            'About #school_app_project',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 35,
            )
          ]),
          horizontalTitleGap: 1,
        ),
        GlobalVariables.divider,
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.info_outline,
            color: Colors.black,
          ),
          title: const Text(
            'Terms & Conditions',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 35,
            )
          ]),
          horizontalTitleGap: 1,
        ),
        GlobalVariables.divider,
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.info_outline,
            color: Colors.black,
          ),
          title: const Text(
            'Privacy Policy',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 35,
            )
          ]),
          horizontalTitleGap: 1,
        ),
        GlobalVariables.divider,
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.info_outline,
            color: Colors.black,
          ),
          title: const Text(
            'Support',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 35,
            )
          ]),
          horizontalTitleGap: 1,
        ),
        GlobalVariables.divider,
        ListTile(
          onTap: () {
            Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                MaterialPageRoute(
              builder: (BuildContext context) {
                return const LoginScreen();
              },
            ), (_) => false);
          },
          leading: const Icon(
            Icons.exit_to_app,
            color: Colors.black,
          ),
          title: const Text(
            'Log out',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 35,
            )
          ]),
          horizontalTitleGap: 1,
        ),
        GlobalVariables.divider,
      ]),
    );
  }
}
