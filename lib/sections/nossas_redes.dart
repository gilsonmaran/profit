import 'package:flutter/material.dart';
import 'package:profit_v3/components/contatct_button.dart';
import 'package:profit_v3/components/section_title.dart';

class NossasRedes extends StatelessWidget {
  const NossasRedes({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    String instagram = 'https://www.instagram.com/profit.labs';
    String facebook = "https://www.facebook.com/profitlabs";
    String youtube = "https://www.youtube.com/@profitlabstv";
    String linkedIn = "https://www.linkedin.com/company/profitlaboratorios";

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
              contactButton("social/instagram.png", instagram, screenHeight),
              contactButton("social/facebook.png", facebook, screenHeight),
              contactButton("social/youtube.png", youtube, screenHeight),
              contactButton("social/linkedin.png", linkedIn, screenHeight),
            ],
          ),
        ],
      ),
    );
  }
}
