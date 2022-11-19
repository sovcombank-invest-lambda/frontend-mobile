import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';

import '../../common_setup/Routes.dart';
import '../../generated/l10n.dart';
import '../../ui/Fields.dart';

class CodeInputScreen extends StatefulWidget {
  const CodeInputScreen({Key? key}) : super(key: key);

  @override
  State<CodeInputScreen> createState() => CodeInputScreenState();
}

class CodeInputScreenState extends State<CodeInputScreen> {
  final colorService = Injector().get<ColorService>();
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              S.current.regNumberConfirmationTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              S.current.regNumberConfirmationText,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '+7 903 828 62 15',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 43),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CodeField(
                  colorService: colorService,
                  focus: focus1,
                  onChanged: (str) {
                    if (str.isNotEmpty) {
                      _focusToField(2);
                    }
                  },
                  onTap: () => _focusToField,
                ),
                const SizedBox(
                  width: 15,
                ),
                CodeField(
                  colorService: colorService,
                  focus: focus2,
                  onChanged: (str) {
                    if (str.isEmpty) {
                      _focusToField(1);
                    } else {
                      _focusToField(3);
                    }
                  },
                  onTap: () => _focusToField,
                ),
                const SizedBox(
                  width: 15,
                ),
                CodeField(
                  colorService: colorService,
                  focus: focus3,
                  onChanged: (str) {
                    if (str.isEmpty) {
                      _focusToField(2);
                    } else {
                      _focusToField(4);
                    }
                  },
                  onTap: () => _focusToField,
                ),
                const SizedBox(
                  width: 15,
                ),
                CodeField(
                  colorService: colorService,
                  focus: focus4,
                  onChanged: (str) {
                    if (str.isEmpty) {
                      _focusToField(3);
                    } else {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.addPINScreen, (route) => false);
                    }
                  },
                  onTap: () => _focusToField,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.center,
                child: TextSmallButton(
                    colorService: colorService,
                    title: S.current.regRepeatCode,
                    onTap: () {}))
          ]),
        ),
      ),
    );
  }

  _focusToField(int num) {
    switch (num) {
      case 1:
        FocusScope.of(context).requestFocus(focus1);
        break;
      case 2:
        FocusScope.of(context).requestFocus(focus2);
        break;
      case 3:
        FocusScope.of(context).requestFocus(focus3);
        break;
      case 4:
        FocusScope.of(context).requestFocus(focus4);
        break;
    }
  }
}
