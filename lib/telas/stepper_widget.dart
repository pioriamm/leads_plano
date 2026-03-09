import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {

  final int step;

  const StepperWidget({
    super.key,
    required this.step,
  });

  @override
  Widget build(BuildContext context) {

    List<String> steps = [
      "Empresa",
      "Responsável",
      "Plano",
      "Assinatura"
    ];

    return Column(

      children: [
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(steps.length, (index) {

            bool active = index == step;
            bool completed = index < step;

            return Row(
              children: [

                /// CIRCULO
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: active || completed
                        ? const Color(0xff0f3d40)
                        : Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text(
                      "${index + 1}",
                      style: TextStyle(
                        color: active || completed
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                /// TEXTO
                Text(
                  steps[index],
                  style: TextStyle(
                    fontWeight: active
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),

                /// LINHA ENTRE PASSOS
                if (index != steps.length - 1)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 40,
                    height: 2,
                    color: Colors.grey.shade300,
                  ),
              ],
            );
          }),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}