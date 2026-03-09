import 'package:flutter/material.dart';
import 'package:leads_plano/telas/step_title.dart';

class CardCentral extends StatelessWidget {

  final Widget stepWidget;
  final int step;

  const CardCentral({
    super.key,
    required this.stepWidget,
    required this.step,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 700,
        child: Stack(
          clipBehavior: Clip.none,
          children: [

            /// CARD PRINCIPAL
            Container(
              padding: const EdgeInsets.fromLTRB(30, 80, 30, 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: const Color(0xff0f3d40),
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  /// TITULO DO PLANO
                  const Text(
                    "Plano Completo",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0f3d40),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// TITULO DO STEP
                  StepTitle(step: step),

                  const SizedBox(height: 20),

                  /// CONTEÚDO COM FADE
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 400),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: stepWidget,
                  ),
                ],
              ),
            ),

            /// BADGE MAIOR ADESÃO
            Positioned(
              top: -22,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xff0f3d40),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Text(
                    "MAIOR ADESÃO",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}