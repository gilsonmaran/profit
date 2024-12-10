import 'package:flutter/material.dart';
import 'package:profit_v3/botoes_principal.dart';
import 'package:profit_v3/header.dart';
import 'package:profit_v3/meios_de_contato.dart';
import 'package:profit_v3/nossas_redes.dart';
import 'package:profit_v3/rodape.dart';
import 'package:profit_v3/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profit Laboratórios',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            image: const DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover),
          ),
          child: const Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Header(),
                      SizedBox(height: 20),
                      BotoesPrincipal(),
                      SizedBox(height: 40),
                      MeiosDeContato(),
                      SizedBox(height: 40),
                      NossasRedes(),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              Rodape()
            ],
          ),
        ),
      ),
    );
  }
}
