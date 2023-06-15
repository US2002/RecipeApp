import 'package:flutter/material.dart';
import 'package:recipe_genie/pages/home.dart';
import 'package:recipe_genie/splashScreenPages/page1.dart';
import 'package:recipe_genie/splashScreenPages/page2.dart';
import 'package:recipe_genie/splashScreenPages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            page1(),
            page2(),
            page3(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(fontFamily: 'Roboto-BoldItalic'),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        navigateToHomePage(context);
                      },
                      child: Text(
                        'Done',
                        style: TextStyle(fontFamily: 'Roboto-BoldItalic'),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(fontFamily: 'Roboto-BoldItalic'),
                      ),
                    ),
            ],
          ),
        )
      ],
    ));
  }

  Future navigateToHomePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }
}
