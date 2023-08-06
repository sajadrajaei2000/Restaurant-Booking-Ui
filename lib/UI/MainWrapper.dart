import 'package:flutter/material.dart';
import 'package:project5/UI/Onboarding_2nd.dart';
import 'package:project5/UI/Onboarding_3rd.dart';
import 'package:project5/UI/Onboarding_first.dart';
import 'package:project5/UI/Registration.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final PageController _myPage = PageController(initialPage: 0, keepPage: true);
  double currentPage = 0;
  void initState() {
    super.initState();
    // Add a listener to track the current page position
    _myPage.addListener(() {
      setState(() {
        currentPage = _myPage.page!;
      });
    });
  }

  @override
  void dispose() {
    _myPage.dispose(); // Don't forget to dispose of the PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              allowImplicitScrolling: true,
              controller: _myPage,
              children: const [
                Onboarding_first(),
                Onboarding_2nd(),
                Onboarding_3rd()
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              currentPage == 2.0
                  ? const SizedBox(
                      width: 64,
                    )
                  : TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Registration()),
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(75, 85, 99, 1),
                            fontWeight: FontWeight.w400),
                      )),
              SmoothPageIndicator(
                controller: _myPage,
                count: 3,
                effect: const SwapEffect(
                    type: SwapType.yRotation,
                    activeDotColor: Color.fromRGBO(50, 183, 104, 1)),
              ),
              IconButton(
                onPressed: () {
                  print(_myPage.page);
                  // Move to the next page (right direction)
                  _myPage.page == 2
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Registration()),
                        )
                      : _myPage.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                },
                icon: const Icon(
                  size: 32,
                  Icons.arrow_forward,
                  color: Color.fromRGBO(50, 183, 104, 1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
        ],
      ),
    );
  }
}
