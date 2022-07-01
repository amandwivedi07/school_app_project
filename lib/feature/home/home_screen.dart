import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school/common/footer_home_container.dart';
import 'package:school/common/home_container.dart';
import 'package:school/common/middle_home_container.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat dateformatter = DateFormat('dd MMMM');
    final DateFormat dayFormatter = DateFormat('EEEE');
    final String dateformatted = dateformatter.format(now);
    final String dayformatted = dayFormatter.format(now);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 0.5, color: Colors.grey)),
                    child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.calendar_month_outlined)),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: '$dayformatted\n\n',
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                              text: dateformatted,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700)),
                          // InkWell(onTap: (){},child: Text('Hi'),)
                        ]),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 20.0),
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const HomeContainer(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Text(
                    'Live Updates',
                    style: TextStyle(
                        color: Color(0xff707070),
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const MiddleContainer(),
            const SizedBox(
              height: 20,
            ),
            const LowerContainer()
          ]),
    )));
  }
}
