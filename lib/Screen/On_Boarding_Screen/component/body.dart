import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/Auth/auth_change.dart';

import '../../custom_button.dart';
import 'dot_generate.dart';
import 'on_boarding_view.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> data = [
    {
      'text': 'Welcome to Tokota.Let\'s try to shop!',
      'img': 'assets/images/splash_1.png',
    },
    {
      'text':
          'We help people connect with social network\n around United State of America ',
      'img': 'assets/images/splash_2.png',
    },
    {
      'text': 'Show the easy way to shop.\n Stay safe with us!',
      'img': 'assets/images/splash_3.png',
    }
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 2,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemCount: data.length,
                    itemBuilder: (context, index) => OnBoardingView(
                      img: data[index]['img'].toString(),
                      text: data[index]['text'].toString(),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            data.length,
                            (index) => DotGenerate(
                                currentIndex: currentIndex, index: index),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      CustomButton(
                        text: 'Continue',
                        press: () {
                          Navigator.pushReplacementNamed(
                              context, AuthChangeScreen.routeName);
                        },
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                dragStartBehavior: DragStartBehavior.start,
                itemCount: data.length,
                itemBuilder: (context, index) => OnBoardingView(
                  img: data[index]['img'].toString(),
                  text: data[index]['text'].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        data.length,
                        (index) => DotGenerate(
                            currentIndex: currentIndex, index: index),
                      ),
                    ],
                  ),
                  CustomButton(
                    text: 'Continue',
                    press: () {
                      Navigator.pushReplacementNamed(
                          context, AuthChangeScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
