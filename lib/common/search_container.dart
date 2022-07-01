import 'package:flutter/material.dart';

import 'global_variable.dart';

class SearchContainer extends StatelessWidget {
  double? height;
  double? width;
  IconData? icon;
  String? containerText;
  SearchContainer(
      {this.height, this.width, this.icon, this.containerText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 50;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: GlobalVariables.appColor,
                size: iconSize,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  containerText!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
