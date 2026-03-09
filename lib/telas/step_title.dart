import 'package:flutter/material.dart';

class StepTitle extends StatelessWidget {

  final int step;

  const StepTitle({super.key, required this.step});

  @override
  Widget build(BuildContext context) {

    List titles = [
      "Dados da Empresa",
      "Responsável Legal",
      "Escolha o Plano",
      "Assinar Contrato"
    ];

    return Text(
      titles[step],
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}