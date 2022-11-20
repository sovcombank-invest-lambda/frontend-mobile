import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/common_setup/Routes.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';

import '../../../generated/l10n.dart';

class CaseRefillDoneScreen extends StatefulWidget {
  const CaseRefillDoneScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CaseRefillDoneScreenState();
}

class _CaseRefillDoneScreenState extends State<CaseRefillDoneScreen> {
  final colorService = Injector().get<ColorService>();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 353,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 300,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Деньги зачислены",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "25 000 ₽",
                              style: TextStyle(
                                  color: Color(0xff39B045),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 36),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                  color: Color(0xffE5EAF0),
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(9),
                              child: Image.asset("images/money.png"),
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              "История",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 90,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xff182E51),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 46,
                          ),
                        )),
                  ],
                ),
              ),
              PrimaryButton(
                  colorService: colorService,
                  title: S.current.buttonOK,
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, Routes.homeScreen, (route) => false))
            ],
          ),
        ),
      );
}
