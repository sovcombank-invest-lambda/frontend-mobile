import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/screens/InDeveloping.dart';
import 'package:mobile_client/screens/account/AccountHelloFirst.dart';
import 'package:mobile_client/screens/account/AccountHelloSecond.dart';
import 'package:mobile_client/screens/auth/AddPINScreen.dart';
import 'package:mobile_client/screens/auth/CodeInput.dart';
import 'package:mobile_client/screens/auth/RegScreen.dart';
import 'package:mobile_client/screens/welcome/WelcomeScreen.dart';

import 'common_setup/ModuleContainer.dart';
import 'common_setup/Routes.dart';
import 'generated/l10n.dart';

void main() {
  ModuleContainer.initialize(Injector());
  runApp(const InvestApp());
}

class InvestApp extends StatelessWidget {
  const InvestApp({Key? key}) : super(key: key);

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
        fontFamily: 'SF UI Display',
      ),
      initialRoute: Routes.welcomeScreen,
      routes: {
        Routes.welcomeScreen: (context) => WelcomeScreen(),
        Routes.regScreen: (context) => RegScreen(),
        Routes.codeScreen: (context) => CodeInputScreen(),
        Routes.addPINScreen: (context) => AddPINScreen(),
        Routes.accountHelloFirst: (context) => AccountHelloScreen(),
        Routes.accountHelloSecond: (context) => AccountHelloSecondScreen(),
        Routes.homeScreen: (context) => AddPINScreen()
      },
    );
  }
}