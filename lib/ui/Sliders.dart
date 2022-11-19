import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../services/ColorService.dart';

class CurrencySlider extends StatefulWidget {
  final ColorService colorService;

  const CurrencySlider({super.key, required this.colorService});

  @override
  State<CurrencySlider> createState() => _CurrencySliderState();
}

class _CurrencySliderState extends State<CurrencySlider> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return CustomSlidingSegmentedControl<int>(
      initialValue: _value,
      isStretch: true,
      height: 110,
      padding: 0.0,
      children: {
        1: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('₽',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500,
                  color: (_value == 1)
                      ? Colors.white
                      : widget.colorService.primaryColor(),
                )),
            const SizedBox(
              height: 8,
            ),
            Text(S.current.caseRefillRUB,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: (_value == 1)
                      ? Colors.white
                      : widget.colorService.primaryColor(),
                ))
          ],
        ),
        2: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('\$',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500,
                  color: (_value == 2)
                      ? Colors.white
                      : widget.colorService.primaryColor(),
                )),
            const SizedBox(
              height: 8,
            ),
            Text(S.current.caseRefillUSD,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: (_value == 2)
                      ? Colors.white
                      : widget.colorService.primaryColor(),
                ))
          ],
        ),
        3: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('€',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500,
                  color: (_value == 3)
                      ? Colors.white
                      : widget.colorService.primaryColor(),
                )),
            const SizedBox(
              height: 8,
            ),
            Text(S.current.caseRefillEUR,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: (_value == 3)
                      ? Colors.white
                      : widget.colorService.primaryColor(),
                ))
          ],
        ),
      },
      decoration: BoxDecoration(
        color: widget.colorService.backgroundCurrencySliderColor(),
        borderRadius: BorderRadius.circular(16),
      ),
      thumbDecoration: BoxDecoration(
        color: widget.colorService.primaryColor(),
        borderRadius: BorderRadius.circular(16),
      ),
      onValueChanged: (v) {
        setState(() {
          _value = v;
        });
      },
    );
  }
}
