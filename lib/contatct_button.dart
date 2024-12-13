import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget contactButton(String pathIcon, String url, double screenHeight) {
  void launchURL(String url) async {
    Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) throw 'Não foi possível abrir o link: $url';
  }

  return GestureDetector(
    onTap: () => launchURL(url),
    child: Image.asset("assets/$pathIcon", height: screenHeight * 0.1),
  );
}
