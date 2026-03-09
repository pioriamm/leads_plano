import 'package:flutter/material.dart';

class AssinaturaStep extends StatelessWidget {
  final VoidCallback back;

  const AssinaturaStep({super.key, required this.back});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 700,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Assinar Contrato",
                    style:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                const CheckboxListTile(
                  value: false,
                  onChanged: null,
                  title: Text("Aceito os termos do contrato"),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: back, child: const Text("Voltar")),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("ASSINAR CONTRATO"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}