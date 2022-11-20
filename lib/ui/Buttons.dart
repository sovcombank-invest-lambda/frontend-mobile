import 'package:flutter/material.dart';
import 'package:mobile_client/services/ColorService.dart';

class PrimaryButton extends StatelessWidget {
  final ColorService colorService;
  final String title;
  final bool enabled;
  final VoidCallback onTap;

  const PrimaryButton(
      {Key? key,
      required this.colorService,
      required this.title,
      required this.onTap,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: (enabled)
              ? colorService.primaryColor()
              : colorService.defaultColor()),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: (enabled) ? onTap : null,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: (enabled)
                      ? Colors.white
                      : colorService.unenabledTextColor()),
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final ColorService colorService;
  final String title;
  final VoidCallback onTap;

  const DefaultButton(
      {Key? key,
      required this.colorService,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorService.defaultColor()),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: colorService.primaryColor()),
            ),
          ),
        ),
      ),
    );
  }
}

class TextSmallButton extends StatelessWidget {
  final ColorService colorService;
  final String title;
  final VoidCallback onTap;

  const TextSmallButton(
      {Key? key,
      required this.colorService,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        )),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        overlayColor: MaterialStateProperty.all(Colors.black12),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class CodeButton extends StatelessWidget {
  final ColorService colorService;
  final String number;
  final VoidCallback onTap;

  const CodeButton(
      {Key? key,
      required this.colorService,
      required this.number,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: colorService.codeBorderColor())),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackspaceCodeButton extends StatelessWidget {
  final ColorService colorService;
  final VoidCallback onTap;

  const BackspaceCodeButton(
      {Key? key, required this.colorService, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 66,
            width: 66,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Icon(
              Icons.keyboard_backspace,
              color: colorService.primaryColor(),
            )),
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final ColorService colorService;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const CircleButton(
      {super.key,
      required this.colorService,
      required this.icon,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorService.defaultColor(),
      ),
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Center(
                child: Icon(
              icon,
              size: 20,
              color: color,
            )),
          ),
        ),
      ),
    );
  }
}
