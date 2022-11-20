import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import '../../../generated/l10n.dart';
import '../../../services/ColorService.dart';

class CatalogScreen extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            S.current.caseMainCurrencies,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Image.asset('images/catalog.png'),
          )
        ],
      ),
    );
  }
}
