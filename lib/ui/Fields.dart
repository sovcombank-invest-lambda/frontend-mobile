import 'package:flutter/material.dart';

import '../services/ColorService.dart';

typedef FunctionStringCallback = void Function(String data);

class CodeField extends StatelessWidget {
  final ColorService colorService;
  final FocusNode focus;
  final bool isActive;
  final FunctionStringCallback onChanged;
  final VoidCallback onTap;

  const CodeField(
      {super.key, required this.colorService, this.isActive = false, required this.onChanged, required this.onTap, required this.focus});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 59,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: colorService.defaultColor(),
          borderRadius: BorderRadius.circular(10),
        // border: (focus.hasFocus)
        //     ? Border.all(color: colorService.primaryColor())
        //     : null
      ),
      child: TextField(
        focusNode: focus,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        cursorColor: colorService.primaryColor(),
        cursorWidth: 1.5,
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: "",
        ),
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 29),
        onChanged: onChanged,
        onTap: onTap,
        maxLength: 1,
      ),
    );
  }
}
