import 'package:flutter/material.dart';

class WelcomeCarouselScreen extends StatelessWidget {
  final String title;
  final String text;
  final String imagePath;

  const WelcomeCarouselScreen(
      {super.key,
      required this.title,
      required this.text,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
              )),
          const SizedBox(
            height: 38,
          ),
          Text(title,
              style: const TextStyle(fontSize: 38, fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
