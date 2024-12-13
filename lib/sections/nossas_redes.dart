import 'package:flutter/material.dart';
import 'package:profit_v3/contatct_button.dart';
import 'package:profit_v3/section_title.dart';
import 'package:url_launcher/url_launcher.dart';

class NossasRedes extends StatelessWidget {
  const NossasRedes({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: sectionTitle('Nossas Redes'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              contactButton("social/instagram.png",
                  'https://www.instagram.com/profit.labs', screenHeight),
              contactButton("social/facebook.png",
                  "https://www.facebook.com/profitlabs", screenHeight),
              contactButton("social/youtube.png",
                  "https://www.youtube.com/@profitlabstv", screenHeight),
              contactButton(
                  "social/linkedin.png",
                  "https://www.linkedin.com/company/profitlaboratorios",
                  screenHeight),
            ],
          ),
        ],
      ),
    );
  }
}
