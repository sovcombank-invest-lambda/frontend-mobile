import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../services/ColorService.dart';

typedef FunctionStringCallback = void Function(String data);

class CodeField extends StatelessWidget {
  final ColorService colorService;
  final FocusNode focus;
  final bool isActive;
  final FunctionStringCallback onChanged;
  final VoidCallback onTap;

  const CodeField(
      {super.key,
      required this.colorService,
      this.isActive = false,
      required this.onChanged,
      required this.onTap,
      required this.focus});

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

class PrimaryTextField extends StatelessWidget {
  final ColorService colorService;
  final MaskTextInputFormatter? maskTextInputFormatter;
  final FunctionStringCallback onChanged;
  final TextStyle style;
  final TextInputType textInputType;
  final String hint;

  const PrimaryTextField(
      {super.key,
      required this.colorService,
      required this.onChanged,
      required this.maskTextInputFormatter,
      required this.style,
      required this.textInputType,
      required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      style: style,
      keyboardType: textInputType,
      autocorrect: false,
      cursorColor: colorService.primaryColor(),
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorService.primaryColor()),
          ),
          hintStyle: const TextStyle(fontSize: 16),
          hintText: hint),
      cursorWidth: 1.5,
      onChanged: onChanged,
      inputFormatters:
          (maskTextInputFormatter != null) ? [maskTextInputFormatter!] : null,
    );
  }
}
