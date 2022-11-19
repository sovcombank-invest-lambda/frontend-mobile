import 'package:flutter/material.dart';
import 'package:mobile_client/services/ColorService.dart';

class CodeDot extends StatelessWidget {
  final bool colored;
  final ColorService colorService;

  const CodeDot({super.key, required this.colored, required this.colorService});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13,
      width: 13,
      decoration: BoxDecoration(
          border: (colored)
              ? null
              : Border.all(color: colorService.codeBorderColor()),
          color: (colored) ? colorService.primaryColor() : Colors.transparent,
          shape: BoxShape.circle),
    );
  }
}
