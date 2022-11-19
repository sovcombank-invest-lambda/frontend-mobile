import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';

import '../../generated/l10n.dart';

class AccountHelloScreen extends StatefulWidget {
  const AccountHelloScreen({Key? key}) : super(key: key);

  @override
  State<AccountHelloScreen> createState() => AccountHelloScreenState();
}

class AccountHelloScreenState extends State<AccountHelloScreen> {
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
              SizedBox(
                height: 96,
              ),
              Text(S.current.accountHelloText,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(height: 38,),
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'images/phoneInvest.png',
                    fit: BoxFit.fitWidth,
                  )),
              SizedBox(height: 25,),
              PrimaryButton(colorService: colorService,
                  title: S.current.addRealAccButton,
                  onTap: () {}),
              SizedBox(
                height: 25
                ,),
              DefaultButton(colorService: colorService,
                  title: S.current.addDemoAccButton,
                  onTap: () {}),


            ],
          ),
        ),
      ),
    );
  }
}
