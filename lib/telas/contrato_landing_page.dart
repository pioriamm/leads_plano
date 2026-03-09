import 'package:flutter/material.dart';
import 'package:leads_plano/service/contrato_provider.dart';
import 'package:leads_plano/telas/assinatura_step.dart';
import 'package:leads_plano/telas/card_central.dart';
import 'package:leads_plano/telas/plano_step.dart';
import 'package:leads_plano/telas/empresa_step.dart';
import 'package:leads_plano/telas/responsavel_step.dart';
import 'package:leads_plano/telas/stepper_widget.dart';
import 'package:provider/provider.dart';

class ContratoPage extends StatelessWidget {
  const ContratoPage({super.key});

  @override
  Widget build(BuildContext context) {

    final contrato = context.watch<ContratoProvider>();

    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          StepperWidget(step: contrato.step),

          Expanded(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [

                  SizedBox(
                    width: 420,
                    child: PageView(
                      controller: contrato.controller,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [

                        CardCentral(
                          step: 0,
                          stepWidget: EmpresaStep(
                            next: contrato.next,
                          ),
                        ),

                        CardCentral(
                          step: 1,
                          stepWidget: ResponsavelStep(
                            next: contrato.next,
                            back: contrato.back,
                          ),
                        ),

                        CardCentral(
                          step: 2,
                          stepWidget: PlanoStep(
                            next: contrato.next,
                            back: contrato.back,
                          ),
                        ),

                        CardCentral(
                          step: 3,
                          stepWidget: AssinaturaStep(
                            back: contrato.back,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    left: 60,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: contrato.step == 0
                          ? null
                          : contrato.back,
                    ),
                  ),

                  Positioned(
                    right: 60,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: contrato.step == 3
                          ? null
                          : contrato.next,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}