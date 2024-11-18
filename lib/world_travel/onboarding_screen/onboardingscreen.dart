import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:works_on/world_travel/onboarding_screen/intro_page1.dart';
import 'package:works_on/world_travel/onboarding_screen/intro_page2.dart';
import 'package:works_on/world_travel/onboarding_screen/intro_page3.dart';
import 'package:works_on/world_travel/pages/login_page/welcome_back_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                controller: _controller,
                children: const [
                  IntroPage1(),
                  IntroPage2(),
                  IntroPage3(),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.w,
                      ),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 15,
                          dotColor: Color(0xFF000000),
                          activeDotColor: Colors.pink,
                          expansionFactor: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.only(bottom: 60.h, right: 46.w),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        if (onLastPage) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomeBackPage(),
                            ),
                          );
                        } else {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: SvgPicture.asset(
                        'lib/assets/images/Frame 4.svg',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
