import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/common/reusable_container.dart';

import 'global_variable.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          ReusableContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Badge(
                      elevation: 5,
                      badgeContent: const Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      badgeColor: GlobalVariables.appColor,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CupertinoIcons.book_circle_fill,
                      size: 50,
                      color: GlobalVariables.appColor,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Homework',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.34,
          ),
          const SizedBox(
            width: 20,
          ),
          ReusableContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: GlobalVariables.appColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: 45,
                        height: 24,
                        child: const Center(
                          child: Text(
                            'PAID',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CupertinoIcons.money_dollar_circle,
                      size: 50,
                      color: GlobalVariables.appColor,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Fees',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.50,
          ),
        ],
      ),
    );
  }
}
