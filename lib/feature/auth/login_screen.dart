import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school/common/global_variable.dart';
import 'package:school/feature/auth/account_confirm.dart';
import 'otp_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool validate = false;
TextEditingController mobNumController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor)),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome!",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'enter your registered no.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).primaryColor),
                          child: Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: SizedBox(
                                height: 40,
                                width: 20,
                                child: Image.asset(
                                  'assets/images/flag.PNG',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const Text(
                              '+91',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ]),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10)
                            ],
                            onChanged: (value) {
                              if (value.length == 10) {
                                setState(() {
                                  validate = true;
                                });
                              }
                              if (value.length < 10) {
                                setState(() {
                                  validate = false;
                                });
                              }
                            },
                            controller: mobNumController,
                            style: const TextStyle(fontSize: 20),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Type your phone Number',
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: AbsorbPointer(
                    absorbing: validate ? false : true,
                    child: ElevatedButton.icon(
                        label: const Text(
                          'Next',
                          style: TextStyle(fontSize: 18),
                        ),
                        icon: const Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AccountConfrim(
                                    phone: mobNumController.text,
                                  )));
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) =>
                          //         OTPScreen(mobNumController.text)));
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(250, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            primary: validate
                                ? GlobalVariables.appColor
                                : GlobalVariables.appColor))),
              ),
            ],
          )
        ]);
  }
}
