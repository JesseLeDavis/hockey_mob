import 'package:flutter/material.dart';
import 'package:hockey_mob/shared/themes/color_themes.dart';

class ProgressDots extends StatelessWidget {
  const ProgressDots({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });
  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ...List.generate(totalSteps, (index) {
          return AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutCirc,
            margin: const EdgeInsets.all(3),
            width: currentStep == index ? 14.0 : 7.0,
            height: 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: currentStep == index
                  ? ColorThemes.neutral300
                  : ColorThemes.neutral700,
            ),
          );
        }),
      ],
    );
  }
}
