import 'package:flutter/material.dart';

import '../../common/global_variable.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: InkWell(
                child: Container(
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    )))),
        Column(
          children: [
            const Text(
              "Aman Dwivedi",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                decoration: BoxDecoration(
                  color: GlobalVariables.appColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                width: 98,
                height: 24,
                child: const Center(
                  child: Text(
                    'Class VIII A',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ))
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
              color: const Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 1, color: Colors.grey)),
          child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.keyboard_arrow_down)),
        ),
      ],
    );
  }
}
