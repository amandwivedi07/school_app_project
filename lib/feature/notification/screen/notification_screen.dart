import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:school/common/notice_container.dart';

import '../../../common/bottom_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.transparent,
        title: const Text(
          'Notice Board',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          NoticeContainer(
            cheight: MediaQuery.of(context).size.height * .2,
            ctext: 'Holiday',
            htitle: 'Diwali Holiday\n\n',
            hdescription: 'XYZ-XYZ-XYZ',
          ),
          const SizedBox(
            height: 20,
          ),
          NoticeContainer(
            cheight: MediaQuery.of(context).size.height * .2,
            ctext: 'Event',
            htitle: 'Invito Loreto\n\n',
            hdescription: 'Lorem ipsum, you \n ispsum, gysum, go... ',
          ),
          const SizedBox(
            height: 20,
          ),
          NoticeContainer(
            cheight: MediaQuery.of(context).size.height * .2,
            ctext: 'Event',
            htitle: 'UNI FEST\n\n',
            hdescription: 'Lorem ipsum, you \n ispsum, gysum, go... ',
          ),
          const SizedBox(
            height: 20,
          ),
          NoticeContainer(
            cheight: MediaQuery.of(context).size.height * .2,
            ctext: 'Holiday',
            htitle: 'Diwali Holiday\n\n',
            hdescription: 'XYZ-XYZ-XYZ',
          ),
        ],
      )),
    );
  }
}
