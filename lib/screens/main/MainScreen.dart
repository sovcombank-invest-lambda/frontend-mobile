import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:mobile_client/screens/InDevelopingScreen.dart';
import 'package:mobile_client/screens/main/catalog/CatalogScreen.dart';
import 'package:mobile_client/services/ColorService.dart';

import '../../generated/l10n.dart';
import 'case/CaseMainScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  PageController page = PageController();
  final colorService = Injector().get<ColorService>();

  int _index = 0;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    switch (_index) {
      case 1:
        return CatalogScreen();
      case 3:
        return InDevelopingScreen(showBack: false,);
      default:
        return CaseMainScreen();
    }
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: _index,
      onTap: (i) {
        setState(() {
          _index = i;
        });
      },
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
    );
  }
}
