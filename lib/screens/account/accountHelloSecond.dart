import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';

import '../../generated/l10n.dart';

class AccountHelloSecondScreen extends StatefulWidget {
  const AccountHelloSecondScreen({Key? key}) : super(key: key);

  @override
  State<AccountHelloSecondScreen> createState() => AccountHelloSecondState();
}

class AccountHelloSecondState extends State<AccountHelloSecondScreen> {
  final colorService = Injector().get<ColorService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 97,),
              Text(S.current.accountHelloSecondText,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              Text(S.current.accountHelloSecondText2,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 38,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'images/chest.png',
                    fit: BoxFit.fitWidth,
                  )),
              SizedBox(
                height: 25,
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
