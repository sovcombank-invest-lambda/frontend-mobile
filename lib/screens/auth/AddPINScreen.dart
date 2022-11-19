import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/ui/Buttons.dart';
import 'package:mobile_client/ui/Dots.dart';

import '../../generated/l10n.dart';
import '../../services/ColorService.dart';

class AddPINScreen extends StatefulWidget {
  const AddPINScreen({super.key});

  @override
  State<AddPINScreen> createState() => _AddPINScreenState();
}

class _AddPINScreenState extends State<AddPINScreen> {
  final colorService = Injector().get<ColorService>();
  String _PIN = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            Text(
              S.current.addCodeCreateCodeText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              S.current.addCodeCreateCodeInfoText,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 74,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CodeDot(
                    colored: (_PIN.isNotEmpty) ? true : false,
                    colorService: colorService),
                const SizedBox(
                  width: 10,
                ),
                CodeDot(
                    colored: (_PIN.length > 1) ? true : false,
                    colorService: colorService),
                const SizedBox(
                  width: 10,
                ),
                CodeDot(
                    colored: (_PIN.length > 2) ? true : false,
                    colorService: colorService),
                const SizedBox(
                  width: 10,
                ),
                CodeDot(
                    colored: (_PIN.length > 3) ? true : false,
                    colorService: colorService)
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CodeButton(
                    colorService: colorService,
                    number: '1',
                    onTap: () {
                      _incrementPIN('1');
                    }),
                CodeButton(
                    colorService: colorService,
                    number: '2',
                    onTap: () {
                      _incrementPIN('2');
                    }),
                CodeButton(
                    colorService: colorService,
                    number: '3',
                    onTap: () {
                      _incrementPIN('3');
                    }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CodeButton(
                    colorService: colorService,
                    number: '4',
                    onTap: () {
                      _incrementPIN('4');
                    }),
                CodeButton(
                    colorService: colorService,
                    number: '5',
                    onTap: () {
                      _incrementPIN('5');
                    }),
                CodeButton(
                    colorService: colorService,
                    number: '6',
                    onTap: () {
                      _incrementPIN('6');
                    }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CodeButton(
                    colorService: colorService,
                    number: '7',
                    onTap: () {
                      _incrementPIN('7');
                    }),
                CodeButton(
                    colorService: colorService,
                    number: '8',
                    onTap: () {
                      _incrementPIN('8');
                    }),
                CodeButton(
                    colorService: colorService,
                    number: '9',
                    onTap: () {
                      _incrementPIN('9');
                    }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(
                  height: 66,
                  width: 66,
                ),
                CodeButton(
                    colorService: colorService,
                    number: '0',
                    onTap: () {
                      _incrementPIN('0');
                    }),
                BackspaceCodeButton(
                    colorService: colorService, onTap: _decrementPIN),
              ],
            ),
            const SizedBox(
              height: 72,
            ),
            TextSmallButton(
                colorService: colorService,
                title: S.current.addCodeLogout,
                onTap: () {}),
            // CodeDot(colored: true, colorService: colorService),
            // CodeDot(colored: false, colorService: colorService),
          ],
        ),
      ),
    );
  }

  _incrementPIN(String num) {
    if (_PIN.length < 4) {
      setState(() {
        _PIN += num;
      });
    }
  }

  _decrementPIN() {
    if (_PIN.isNotEmpty) {
      setState(() {
        _PIN = _PIN.substring(0, _PIN.length - 1);
      });
    }
  }
}
