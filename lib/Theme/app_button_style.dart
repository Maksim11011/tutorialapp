import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static ButtonStyle linkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(const Color(0xff01b4e4)),
    textStyle: const MaterialStatePropertyAll(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );
}
