import 'package:flutter/material.dart';

import 'global_variable.dart';

class NoticeContainer extends StatelessWidget {
  double? cheight;
  String? ctext;
  String? htitle;
  String? hdescription;
  NoticeContainer(
      {this.cheight, this.ctext, this.htitle, this.hdescription, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity,
        height: cheight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff09C6F9),
            Color(0xff045DE9),
          ]),
          color: GlobalVariables.appColor,
          //
          // backgroundBlendMode: BlendMode.clear,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF1F1F1),
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 5, color: Color(0xff09C6F9))),
                      child: Center(
                        child: Text(
                          ctext!,
                          style: const TextStyle(
                              color: GlobalVariables.appColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: htitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                              text: hdescription,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                        ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: GlobalVariables.appColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.keyboard_double_arrow_right_outlined,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
