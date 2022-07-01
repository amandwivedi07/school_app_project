import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 24,
              decoration: BoxDecoration(
                color: const Color(0xffc2e3fb),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 24,
              decoration: BoxDecoration(
                color: const Color(0xff6eb7ec),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 24,
              decoration: BoxDecoration(
                color: const Color(0xff0573ed),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 38,
                    backgroundColor: Color(0xff5fbbf9),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Text(
                        "Holiday",
                        style: TextStyle(
                          color: Color(0xff4878d8),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    flex: 9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Diwali Holiday",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          "Date : 26 Oct - 30 Oct",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Expanded(
                    flex: 2,
                    child: Baseline(
                      baseline: 140,
                      baselineType: TextBaseline.alphabetic,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff3287f0),
                        child: Icon(Icons.double_arrow),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
