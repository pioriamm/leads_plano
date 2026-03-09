import 'package:flutter/material.dart';

class ContratoProvider extends ChangeNotifier {

  final PageController controller = PageController();

  int step = 0;

  void next() {
    if (step < 3) {
      step++;

      controller.animateToPage(
        step,
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );

      notifyListeners();
    }
  }

  void back() {
    if (step > 0) {
      step--;

      controller.animateToPage(
        step,
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );

      notifyListeners();
    }
  }
}