import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/screens/InDevelopingScreen.dart';
import 'package:mobile_client/screens/account/AccountHelloFirst.dart';
import 'package:mobile_client/screens/account/AccountHelloSecond.dart';
import 'package:mobile_client/screens/auth/AddPINScreen.dart';
import 'package:mobile_client/screens/auth/CodeInputScreen.dart';
import 'package:mobile_client/screens/auth/RegScreen.dart';
import 'package:mobile_client/screens/main/MainScreen.dart';
import 'package:mobile_client/screens/main/case/CaseRefillScreen.dart';
import 'package:mobile_client/screens/main/case/Refill.dart';
import 'package:mobile_client/screens/welcome/WelcomeScreen.dart';
import 'package:mobile_client/services/ColorService.dart';
import 'package:mobile_client/screens/main/news.dart';

import 'common_setup/ModuleContainer.dart';
import 'common_setup/Routes.dart';
import 'generated/l10n.dart';

void main() {
  ModuleContainer.initialize(Injector());
  runApp(InvestApp());
}

class InvestApp extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  InvestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invest App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
          backgroundColor: colorService.backgroundColor(),
          fontFamily: 'SF UI Display',
          primaryColor: colorService.primaryColor()),
      home: Refill(),
      // initialRoute: Routes.welcomeScreen,
      // routes: {
      //   Routes.welcomeScreen: (context) => WelcomeScreen(),
      //   Routes.regScreen: (context) => RegScreen(),
      //   Routes.codeScreen: (context) => CodeInputScreen(),
      //   Routes.addPINScreen: (context) => AddPINScreen(),
      //   Routes.accountHelloFirstScreen: (context) => AccountHelloScreen(),
      //   Routes.accountHelloSecondScreen: (context) => AccountHelloSecondScreen(),
      //   Routes.inDevelopingScreen: (context) => InDevelopingScreen(showBack: true,),
      //   Routes.mainAddScreen: (context) => CaseRefillScreen(),
      //   Routes.homeScreen: (context) => MainScreen()
      // },
    );
  }
}
