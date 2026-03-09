import 'package:flutter/material.dart';

class PlanoStep extends StatelessWidget {
  final VoidCallback next;
  final VoidCallback back;

  const PlanoStep({super.key, required this.next, required this.back});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Escolha seu plano",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            planoCard("Básico", "R\$79"),
            planoCard("Completo", "R\$199"),
            planoCard("Premium", "R\$319"),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: back, child: const Text("Voltar")),
            const SizedBox(width: 20),
            ElevatedButton(onPressed: next, child: const Text("Continuar"))
          ],
        )
      ],
    );
  }

  Widget planoCard(String title, String price) {
    return Card(
      elevation: 6,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text(price, style: const TextStyle(fontSize: 28)),
              const Spacer(),
              ElevatedButton(onPressed: () {}, child: const Text("Escolher"))
            ],
          ),
        ),
      ),
    );
  }
}