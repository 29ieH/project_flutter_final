import 'package:flutter/material.dart';
import 'package:my_app/screens/login_page/login_page.dart';
import 'package:my_app/util/constans/texts.dart';
import 'package:my_app/util/helpers/function_helpers.dart';
import 'widgets/onboardingdone.dart';
import 'widgets/onboardingitem.dart';
import 'widgets/onboardingdotnavigation.dart';
import 'widgets/onboardingnextnavigation.dart';
import 'widgets/onboardingskip.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  final PageController _pageController = PageController();
  bool isNextPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (index) =>
              {isNextPage = (index == 2), setState(() {})},
          children: const [
            OnBoardingItem(
              imagePath: 'assets/images/boards/board1.png',
              heading: AppTexts.headingBoarding1,
              body: AppTexts.bodyBoarding1,
            ),
            OnBoardingItem(
              imagePath: 'assets/images/boards/board2.png',
              heading: AppTexts.headingBoarding2,
              body: AppTexts.bodyBoarding2,
            ),
            OnBoardingItem(
              imagePath: 'assets/images/boards/board3.png',
              heading: AppTexts.headingBoarding3,
              body: AppTexts.bodyBoarding3,
            ),
          ],
        ),
        OnBoardingSkip(
          onPressed: !isNextPage
              ? () {
                  _pageController.jumpToPage(2);
                }
              : null,
        ),
        OnBoardingDotNavigation(pageController: _pageController),
        !isNextPage
            ? OnBoardingNextNavigation(
                onpresed: () {
                  _pageController.nextPage(
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeIn);
                },
              )
            : OnBoardingDoneNavigation(() =>
                AppHelperFunctions.navigateToScreen(context, const LoginPage()))
      ],
    ));
  }
}
