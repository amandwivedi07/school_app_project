import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:school/common/bottom_bar.dart';
import 'package:school/common/search_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 6.0),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  SearchContainer(
                    icon: CupertinoIcons.macwindow,
                    containerText: 'Attendance',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    icon: CupertinoIcons.calendar,
                    containerText: 'Calendar',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SearchContainer(
                    icon: CupertinoIcons.money_dollar_circle,
                    containerText: 'Fees',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    icon: CupertinoIcons.book_circle_fill,
                    containerText: 'HomeWork',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SearchContainer(
                    icon: CupertinoIcons.camera_on_rectangle,
                    containerText: 'Multimedia',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    icon: CupertinoIcons.doc_append,
                    containerText: 'Notice Board',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SearchContainer(
                    icon: Icons.support,
                    containerText: 'Support',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    icon: CupertinoIcons.person_crop_circle,
                    containerText: 'My Account',
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
