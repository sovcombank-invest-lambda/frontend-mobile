import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';

import '../../common_setup/Routes.dart';
import '../../generated/l10n.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => RegScreenState();
}

class RegScreenState extends State<RegScreen> {
  final colorService = Injector().get<ColorService>();
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                S.current.regTitle,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                S.current.regText,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                autofocus: true,
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.phone,
                autocorrect: false,
                cursorColor: colorService.primaryColor(),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: colorService.primaryColor()),
                  ),
                ),
                cursorWidth: 1.5,
                onChanged: (str) {
                  if (str.length == 18) {
                    setState(() {
                      enabled = true;
                    });
                  } else {
                    if (enabled) {
                      setState(() {
                        enabled = false;
                      });
                    }
                  }
                },
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: '+# (###) ###-##-##', initialText: '7')
                ],
              ),
              const SizedBox(height: 66),
              PrimaryButton(
                title: S.current.regButtonContinue,
                colorService: colorService,
                enabled: enabled,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, Routes.codeScreen, (route) => false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
