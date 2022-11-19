import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/services/ColorService.dart';

import '../../generated/l10n.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  PageController page = PageController();
  final colorService = Injector().get<ColorService>();

  int index = 0;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined),
            label: S.current.briefcase,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: S.current.catalog,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: S.current.news,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_motion),
            label: S.current.other,
          ),
        ],
        selectedItemColor: colorService.primaryColor(),
        unselectedItemColor: colorService.unenabledTextColor(),
      ),
    );
  }
}
