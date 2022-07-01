import 'dart:async';

import 'package:flutter/material.dart';

import '../feature/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
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
            // Container(
            //   alignment: Alignment.topLeft,
            //   child: Image.asset(
            //     'assets/images/logo.PNG',
            //     width: 120,
            //     height: 45,
            //     color: Colors.black,
            //   ),
            // ),
            SizedBox(
              width: 200.0,
              height: 200.0,
              child: Image.asset(
                'assets/images/logo.PNG',
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
