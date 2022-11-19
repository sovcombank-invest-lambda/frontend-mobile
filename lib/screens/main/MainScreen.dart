import 'package:flutter/material.dart';
import 'package:mobile_client/screens/main/case/CaseRefillScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CaseRefillScreen(),
    );
  }

}