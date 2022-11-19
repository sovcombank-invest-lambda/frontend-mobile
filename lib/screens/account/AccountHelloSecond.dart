import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';

import '../../common_setup/Assets.dart';
import '../../generated/l10n.dart';

class AccountHelloSecondScreen extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  AccountHelloSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(S.current.accountHelloSecondText,
                  style: const TextStyle(
                      fontSize: 16)),
              const SizedBox(
                height: 12,
              ),
              Text(S.current.accountHelloSecondText2,
                  style: const TextStyle(
                      fontSize: 16)),
              const SizedBox(
                height: 38,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    A.assetsAccountHelloSecond,
                    fit: BoxFit.fitWidth,
                  )),
              const SizedBox(
                height: 38,
              ),
              PrimaryButton(
                  colorService: colorService,
                  title: S.current.accountHelloSecondButtonContinue,
                  onTap: () {}),
              Align(
                alignment: Alignment.center,
                child: TextSmallButton(
                    colorService: colorService,
                    title: S.current.accountHelloSecondNoNeed,
                    onTap: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
