import 'package:flutter/material.dart';
import 'package:mobile_client/screens/main/news/BlocNewsWidget.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => NewsScreenState();
}

class NewsScreenState extends State<NewsScreen> {
  int currentIndex = 0;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const <Widget>[
                  BlockNewsWidget(),
                  SizedBox(
                    height: 28,
                  ),
                  BlockNewsWidget(),
                  SizedBox(
                    height: 28,
                  ),
                  BlockNewsWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector listViewSquare() => GestureDetector(
        onTap: () {},
        child: Container(
            margin: const EdgeInsets.only(left: 8),
            width: 98,
            decoration: BoxDecoration(
                color: const Color(0xff1C1C1C),
                borderRadius: BorderRadius.circular(24))),
      );

  GestureDetector listViewButton(String text, int index) => GestureDetector(
      onTap: () {
        currentIndex = index;
        setState(() {});
      },
      child: Container(
          height: 36,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 8),
          padding:
              const EdgeInsets.only(top: 9, left: 28, right: 28, bottom: 7),
          decoration: BoxDecoration(
              color: currentIndex == index
                  ? const Color(0xff1E4BD2)
                  : const Color(0xff71BAFF),
              borderRadius: BorderRadius.circular(80)),
          child: Text(text,
              style: TextStyle(
                  color: currentIndex == index
                      ? Colors.white
                      : const Color(0xff1E4BD2)))));
}
