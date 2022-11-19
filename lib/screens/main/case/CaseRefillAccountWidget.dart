import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

import '../../../generated/l10n.dart';
import '../../../services/ColorService.dart';

class CaseRefillAccountWidget extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  CaseRefillAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorService.backgroundCurrencySliderColor()),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            S.current.caseRefillDemo,
            style: TextStyle(
                fontSize: 16.0,
                color: colorService.unenabledTextColor()),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            '1 244,80 ₽',
            style: TextStyle(
                fontSize: 24.0, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

}