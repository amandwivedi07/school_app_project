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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  SearchContainer(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
                    icon: CupertinoIcons.macwindow,
                    containerText: 'Attendance',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
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
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
                    icon: CupertinoIcons.money_dollar_circle,
                    containerText: 'Fees',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
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
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
                    icon: CupertinoIcons.camera_on_rectangle,
                    containerText: 'Multimedia',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
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
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
                    icon: Icons.support,
                    containerText: 'Support',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SearchContainer(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.21,
                    icon: CupertinoIcons.person_crop_circle,
                    containerText: 'My Account',
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
