import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('  By continuing, you agree to the #school_app_project'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Terms of Service'),
              ),
              const Text('&'),
              TextButton(
                onPressed: () {},
                child: const Text('Privacy Policy'),
              )
            ],
          )
        ],
      ),
      // Terms of Service & Privacy Policy.
    );
  }
}
