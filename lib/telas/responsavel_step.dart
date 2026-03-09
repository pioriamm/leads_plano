import 'package:flutter/material.dart';

class ResponsavelStep extends StatelessWidget {

  final VoidCallback next;
  final VoidCallback back;

  const ResponsavelStep({
    super.key,
    required this.next,
    required this.back,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      key: const ValueKey("responsavel"),
      children: [

        const TextField(
          decoration: InputDecoration(labelText: "Nome"),
        ),

        const SizedBox(height: 10),

        const TextField(
          decoration: InputDecoration(labelText: "CPF"),
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            TextButton(
              onPressed: back,
              child: const Text("Voltar"),
            ),

            ElevatedButton(
              onPressed: next,
              child: const Text("Continuar"),
            ),
          ],
        )
      ],
    );
  }
}