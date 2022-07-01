import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school/common/bottom_bar.dart';

class SuccessfullyVerified extends StatefulWidget {
  const SuccessfullyVerified({Key? key}) : super(key: key);

  @override
  State<SuccessfullyVerified> createState() => _SuccessfullyVerifiedState();
}

class _SuccessfullyVerifiedState extends State<SuccessfullyVerified> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const BottomBar()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 500.0,
              height: 500.0,
              child: Image.asset(
                'assets/images/success.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
