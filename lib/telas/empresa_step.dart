import 'package:flutter/material.dart';

class EmpresaStep extends StatelessWidget {

  final VoidCallback next;

  const EmpresaStep({super.key, required this.next});

  @override
  Widget build(BuildContext context) {

    return Column(
      key: const ValueKey("empresa"),
      children: [

        const TextField(
          decoration: InputDecoration(labelText: "Razão Social"),
        ),

        const SizedBox(height: 10),

        const TextField(
          decoration: InputDecoration(labelText: "CNPJ"),
        ),

        const SizedBox(height: 20),

        ElevatedButton(
          onPressed: next,
          child: const Text("Continuar"),
        )
      ],
    );
  }
}