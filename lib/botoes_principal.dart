import 'package:flutter/material.dart';

class BotoesPrincipal extends StatelessWidget {
  const BotoesPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButtonWithImage(
                context,
                "Falar com um \n ATENDENTE",
                "assets/atendente.png",
                "https://wa.me/55019999642207",
                Colors.blue.shade700,
                screenWidth,
              ),
              _buildButtonWithImage(
                context,
                "Sou LOJISTA, \n quero revender",
                "assets/lojista.png",
                "https://profitlabs.ind.br",
                Colors.white,
                screenWidth,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButtonWithImage(
                context,
                "Sou CONSUMIDOR,\n quero comprar",
                "assets/consumidor.png",
                "https://profitlabs.com.br",
                Colors.white,
                screenWidth,
              ),
              _buildButtonWithImage(
                context,
                "Baixar Catálogo \n de Produtos",
                "assets/catalogo.png",
                "https://materiais.profitlabs.com.br/catalogo-profit-laboratorios",
                Colors.blue.shade700,
                screenWidth,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButtonWithImage(BuildContext context, String text,
      String imagePath, String url, Color color, double screenWidth) {
    // void launchURL(String url) async {
    //   Uri uri = Uri.parse(url);

    //   if (await canLaunchUrl(uri)) {
    //     await launchUrl(uri, mode: LaunchMode.externalApplication);
    //   } else {
    //     throw 'Não foi possível abrir o link: $url';
    //   }
    // }

    return Expanded(
      child: GestureDetector(
        onTap: () => print('Site'),
        child: Container(
          height: 100,
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: screenWidth * 0.1,
              ),
              const SizedBox(height: 8),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color == Colors.white
                      ? Colors.blue.shade700
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
