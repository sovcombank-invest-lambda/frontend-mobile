import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/ui/Buttons.dart';
import 'package:mobile_client/ui/Fields.dart';
import 'package:mobile_client/ui/Sliders.dart';

import '../../../common_setup/Routes.dart';
import '../../../generated/l10n.dart';
import '../../../services/ColorService.dart';
import 'CaseRefillAccountWidget.dart';

class CaseRefillScreen extends StatefulWidget {

  const CaseRefillScreen({super.key});

  @override
  State<CaseRefillScreen> createState() => _CaseRefillScreenState();
}

class _CaseRefillScreenState extends State<CaseRefillScreen> {
  final colorService = Injector().get<ColorService>();

  final PageController _pageController = PageController(viewportFraction: 1 / 1.15);

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
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.transparent,
        border: null,
        leading: CupertinoButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(
              Icons.close,
              color: colorService.primaryColor(),
            )),
        middle: Text(
          S.current.caseRefillTitle,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 100,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return CaseRefillAccountWidget();
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: DotsIndicator(
                dotsCount: 3,
                position: _currentPagePosition,
                decorator: DotsDecorator(
                  color: colorService.primaryColor().withOpacity(0.3),
                  activeColor: colorService.primaryColor(),
                  spacing: const EdgeInsets.all(6.0),
                  size: const Size.square(10.0),
                  activeSize: const Size.square(10.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                S.current.caseRefillCurrency,
                style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: CurrencySlider(
                colorService: colorService,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: PrimaryTextField(
                colorService: colorService,
                onChanged: (str) {},
                maskTextInputFormatter: null,
                textInputType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                hint: S.current.caseRefillEnterField,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: PrimaryButton(
                  colorService: colorService,
                  title: S.current.caseRefillAdd,
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, Routes.mainAddDoneScreen, (route) => false)),
            )
          ],
        ),
      ),
    );
  }
}
