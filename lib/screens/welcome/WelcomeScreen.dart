import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/screens/welcome/WelcomeCarouselScreen.dart';

import '../../common_setup/Assets.dart';
import '../../common_setup/Routes.dart';
import '../../generated/l10n.dart';
import '../../services/ColorService.dart';
import '../../ui/Buttons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  final colorService = Injector().get<ColorService>();
  final PageController _pageController = PageController();
  double _currentPagePosition = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPagePosition = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: <Widget>[
                  WelcomeCarouselScreen(
                      title: S.current.welcomeInfoTitle1,
                      text: S.current.welcomeInfoText1,
                      imagePath: A.assetsWelcomeImageFirst),
                  WelcomeCarouselScreen(
                      title: S.current.welcomeInfoTitle2,
                      text: S.current.welcomeInfoText2,
                      imagePath: A.assetsWelcomeImageSecond),
                  WelcomeCarouselScreen(
                      title: S.current.welcomeInfoTitle3,
                      text: S.current.welcomeInfoText3,
                      imagePath: A.assetsWelcomeImageThird),
                ],
              ),
            ),
            DotsIndicator(
              dotsCount: 3,
              position: _currentPagePosition,
              decorator: DotsDecorator(
                color: colorService.primaryColor().withOpacity(0.3),
                activeColor: colorService.primaryColor(),
                spacing: const EdgeInsets.all(6.0),
                size: const Size.square(10.0),
                activeSize: const Size(32.0, 10.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: PrimaryButton(
                colorService: colorService,
                title: S.of(context).welcomeButtonNextText,
                onTap: () => (_currentPagePosition > 1)
                    ? Navigator.pushNamedAndRemoveUntil(
                    context, Routes.regScreen, (Route<dynamic> route) => false)
                    : _pageController.nextPage(
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeInOut),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: DefaultButton(
                colorService: colorService,
                title: S.current.welcomeButtonSkipText,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, Routes.regScreen, (Route<dynamic> route) => false),
              ),
            ),
            const SizedBox(
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
