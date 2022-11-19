import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/ui/Buttons.dart';

import '../../generated/l10n.dart';

class InDevelopingScreen extends StatefulWidget {
  const InDevelopingScreen({Key? key}) : super(key: key);

  @override
  State<InDevelopingScreen> createState() => InDevelopingState();
}

class InDevelopingState extends State<InDevelopingScreen> {
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
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'images/square.png',
                    fit: BoxFit.fitWidth,
                  )),
              Text(S.current.inDevelopingText1,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              Text(S.current.inDevelopingText2,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 25,
              ),
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
