import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/common/global_variable.dart';
import 'package:school/common/reusable_container.dart';

class LowerContainer extends StatelessWidget {
  const LowerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ReusableContainer(
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
                  CupertinoIcons.camera_on_rectangle,
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
                    'Multimedia',
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
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.26,
      ),
    );
  }
}
