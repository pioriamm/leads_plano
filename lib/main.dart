import 'package:flutter/material.dart';
import 'package:leads_plano/service/contrato_provider.dart';
import 'package:provider/provider.dart';
import 'telas/contrato_landing_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ContratoProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leads Contrato',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  ContratoPage(),
    );
  }
}

