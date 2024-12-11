import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NossasRedes extends StatelessWidget {
  const NossasRedes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: _title(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: _icons(context),
          ),
        ),
      ],
    );
  }

  Widget _title() {
    return const Text(
      "NOSSAS REDES",
      style: TextStyle(
        fontFamily: 'MASQUE',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

Widget _icons(context) {
  double screenHeight = MediaQuery.of(context).size.height;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildContactIcon("social/instagram.png",
          'https://www.instagram.com/profit.labs', screenHeight),
      _buildContactIcon("social/facebook.png",
          "https://www.facebook.com/profitlabs", screenHeight),
      _buildContactIcon("social/youtube.png",
          "https://www.youtube.com/@profitlabstv", screenHeight),
      _buildContactIcon("social/linkedin.png",
          "https://www.linkedin.com/company/profitlaboratorios", screenHeight),
    ],
  );
}

Widget _buildContactIcon(String pathIcon, String url, double screenHeight) {
  void launchURL(String url) async {
    Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) throw 'Não foi possível abrir o link: $url';
  }

  return GestureDetector(
    onTap: () => launchURL(url),
    child: Image.asset("assets/$pathIcon", height: screenHeight * 0.1),
  );
}
