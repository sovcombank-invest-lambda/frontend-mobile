import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';
import 'package:mobile_client/ui/Fields.dart';

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
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
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
              PrimaryTextField(
                colorService: colorService,
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
                maskTextInputFormatter: MaskTextInputFormatter(
                    mask: '+# (###) ###-##-##'),
                textInputType: TextInputType.phone,
                style: const TextStyle(fontSize: 20),
                hint: '',
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
