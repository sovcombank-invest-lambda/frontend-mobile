import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

import '../../../common_setup/Assets.dart';
import '../../../generated/l10n.dart';
import '../../../services/ColorService.dart';
import 'CaseMainAccountWidget.dart';

class CaseMainScreen extends StatefulWidget {
  const CaseMainScreen({super.key});

  @override
  State<CaseMainScreen> createState() => _CaseMainScreenState();
}

class _CaseMainScreenState extends State<CaseMainScreen> {
  final colorService = Injector().get<ColorService>();
  final PageController _pageController =
      PageController(viewportFraction: 1 / 1.15);
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
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  S.current.caseMainTitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 250,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return CaseMainAccountWidget();
              },
            ),
          ),
          SizedBox(
            height: 34,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Text(
              S.current.caseMainCurrencies,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Image.asset(A.assetsCaseCurrency),
          )
        ],
      ),
    );
  }
}
