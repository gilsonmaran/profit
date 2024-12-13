import 'package:flutter/material.dart';

BoxDecoration background() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue.shade900, Colors.blue],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    image: const DecorationImage(
        image: AssetImage("assets/background.png"), fit: BoxFit.cover),
  );
}
