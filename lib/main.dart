import 'package:flutter/material.dart';
import 'package:school/router.dart';

import 'common/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Project',
      theme: ThemeData(
        primaryColor: const Color(0xFF3377FF),
        fontFamily: 'Quicksand',
        appBarTheme: const AppBarTheme(
            elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
        // scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        // colorScheme:
        //     const ColorScheme.light(primary: GlobalVariables.secondaryColor)
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const SplashScreen(),
    );
  }
}
