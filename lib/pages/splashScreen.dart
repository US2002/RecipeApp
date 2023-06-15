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
              FloatingActionButton.extended(
                label: const Text(
                  'Skip',
                  style: TextStyle(
                    fontFamily: 'Roboto-BoldItalic',
                    color: Colors.black,
                  ),
                ), // <-- Text
                backgroundColor: Colors.yellow,
                icon: const Icon(
                  // <-- Icon
                  Icons.start,
                  color: Colors.black,
                  size: 24.0,
                ),
                onPressed: () {
                  _controller.jumpToPage(2);
                },
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
                  ? FloatingActionButton.extended(
                      label: const Text(
                        'Cook',
                        style: TextStyle(
                          fontFamily: 'Roboto-BoldItalic',
                          color: Colors.black,
                        ),
                      ), // <-- Text
                      backgroundColor: Colors.yellow,
                      icon: const Icon(
                        // <-- Icon
                        Icons.ramen_dining_sharp,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      onPressed: () {
                        navigateToHomePage(context);
                      },
                    )
                  : FloatingActionButton.extended(
                      icon: const Icon(
                        // <-- Icon
                        Icons.skip_next,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      label: const Text(
                        'Next',
                        style: TextStyle(
                          fontFamily: 'Roboto-BoldItalic',
                          color: Colors.black,
                        ),
                      ), // <-- Text
                      backgroundColor: Colors.yellow,
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                    )
            ],
          ),
        )
      ],
    ));
  }

  Future navigateToHomePage(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return home();
      }),
    );
  }
}
