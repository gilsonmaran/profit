import 'package:flutter/material.dart';
import 'package:profit_v3/components/background.dart';
import 'package:profit_v3/sections/botoes_principal.dart';
import 'package:profit_v3/sections/header.dart';
import 'package:profit_v3/sections/meios_de_contato.dart';
import 'package:profit_v3/sections/nossas_redes.dart';
import 'package:profit_v3/sections/rodape.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: background(),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              BotoesPrincipal(),
              MeiosDeContato(),
              NossasRedes(),
              Rodape()
            ],
          ),
        ),
      ),
    );
  }
}
