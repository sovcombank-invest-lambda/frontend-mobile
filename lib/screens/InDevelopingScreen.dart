import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/services/ColorService.dart';

import '../../generated/l10n.dart';
import '../common_setup/Assets.dart';

class InDevelopingScreen extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  InDevelopingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: colorService.primaryColor(),
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 8,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          A.assetsInDeveloping,
                          fit: BoxFit.fitWidth,
                        )),
                    const SizedBox(
                      height: 38,
                    ),
                    Text(S.current.inDevelopingText1,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(S.current.inDevelopingText2,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    const SizedBox(
                      height: 25,
                    ),
                    const Spacer(),
                    Text(
                      S.current.inDevelopingText3,
                      style: const TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
