import 'package:flutter/material.dart';
import 'package:profit_v3/components/contatct_button.dart';
import 'package:profit_v3/components/section_title.dart';

class MeiosDeContato extends StatelessWidget {
  const MeiosDeContato({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    String sac = "tel:+551936419255";
    String cnpj = "tel:+551922850096";
    String whatsApp = "https://wa.me/5501999642207";
    String email = "mailto:sac@profitlabs.com.br";

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
              contactButton("contatos/sac.png", sac, screenHeight),
              contactButton("contatos/cnpj.png", cnpj, screenHeight),
              contactButton("contatos/whatsapp.png", whatsApp, screenHeight),
              contactButton("contatos/email.png", email, screenHeight),
            ],
          ),
        ],
      ),
    );
  }
}
