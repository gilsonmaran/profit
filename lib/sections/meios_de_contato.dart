import 'package:flutter/material.dart';
import 'package:profit_v3/contatct_button.dart';
import 'package:profit_v3/section_title.dart';

class MeiosDeContato extends StatelessWidget {
  const MeiosDeContato({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: sectionTitle('Meio de Contato'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              contactButton(
                  "contatos/sac.png", "tel:+551936419255", screenHeight),
              contactButton(
                  "contatos/cnpj.png", "tel:+551922850096", screenHeight),
              contactButton("contatos/whatsapp.png",
                  "https://wa.me/5501999642207", screenHeight),
              contactButton("contatos/email.png",
                  "mailto:sac@profitlabs.com.br", screenHeight),
            ],
          ),
        ],
      ),
    );
  }
}
