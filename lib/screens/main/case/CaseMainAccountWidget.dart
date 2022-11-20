import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/common_setup/Routes.dart';

import '../../../generated/l10n.dart';
import '../../../services/ColorService.dart';
import '../../../ui/Buttons.dart';

class CaseMainAccountWidget extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  CaseMainAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                color: colorService.backgroundCurrencySliderColor()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Chip(
                    label: Text(S.current.caseRefillDemo,
                        style: TextStyle(
                            fontSize: 12, color: colorService.primaryColor())),
                    backgroundColor: colorService.defaultColor(),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('1 244,80 ₽',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 15,
                  ),
                  Text('+94.3 ₽  (8,97%) ' + S.current.caseMainAllTime),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(16)),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleButton(
                      colorService: colorService,
                      icon: Icons.restore,
                      color: colorService.unenabledTextColor(),
                      onTap: () => Navigator.pushNamed(context, Routes.inDevelopingScreen),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(S.current.caseMainHistory,
                        style: const TextStyle(fontSize: 12))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleButton(
                      colorService: colorService,
                      icon: Icons.add,
                      color: colorService.primaryColor(),
                      onTap: () => Navigator.pushNamed(context, Routes.mainAddScreen),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(S.current.caseMainAdd, style: const TextStyle(fontSize: 12))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleButton(
                      colorService: colorService,
                      icon: Icons.turn_left,
                      color: colorService.unenabledTextColor(),
                      onTap: () => Navigator.pushNamed(context, Routes.inDevelopingScreen),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      S.current.caseMainGet,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
