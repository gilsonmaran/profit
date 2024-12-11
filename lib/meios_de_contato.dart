import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MeiosDeContato extends StatelessWidget {
  const MeiosDeContato({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: _title(),
          ),
          _icons(context),
        ],
      ),
    );
  }
}

Widget _title() {
  return const Text(
    "Meios de Contato",
    style: TextStyle(
      fontFamily: 'MASQUE',
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  );
}

Widget _icons(context) {
  double screenHeight = MediaQuery.of(context).size.height;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildContactIcon("contatos/sac.png", "tel:+551936419255", screenHeight),
      _buildContactIcon("contatos/cnpj.png", "tel:+551922850096", screenHeight),
      _buildContactIcon(
          "contatos/whatsapp.png", "https://wa.me/5501999642207", screenHeight),
      _buildContactIcon(
          "contatos/email.png", "mailto:sac@profitlabs.com.br", screenHeight),
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
