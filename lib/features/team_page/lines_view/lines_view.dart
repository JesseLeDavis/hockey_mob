import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/componets/progress_dots.dart';
import 'package:flutter_project_template_firebase/features/team_page/cubit/team_page_cubit.dart';
import 'package:flutter_project_template_firebase/features/team_page/lines_view/screens/full_strength.dart';
import 'package:flutter_project_template_firebase/features/team_page/lines_view/screens/power_play.dart';

class LinesView extends StatelessWidget {
  const LinesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamPageCubit, TeamPageState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: CircularProgressIndicator.new,
          loaded: (loaded) {
            return GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.primaryDelta! > 0) {
                  context.read<TeamPageCubit>().setDirection(true);
                } else if (details.primaryDelta! < 0) {
                  context.read<TeamPageCubit>().setDirection(false);
                }
              },
              onHorizontalDragEnd: (details) => loaded.isLeft
                  ? context.read<TeamPageCubit>().decreaseStep()
                  : context.read<TeamPageCubit>().increaseStep(),
              child: Stack(
                children: [
                  AnimatedSwitcher(
                    transitionBuilder: (child, animation) {
                      final stepIncrease =
                          loaded.currentStep > loaded.previousStep;

                      final beginOffsetNewChild = stepIncrease
                          ? const Offset(1, 0)
                          : const Offset(-1, 0);
                      const endOffsetNewChild = Offset.zero;
                      final beginOffsetOldChild = stepIncrease
                          ? const Offset(-1, 0)
                          : const Offset(1, 0);
                      const endOffsetOldChild = Offset.zero;

                      // Identify if the child is new by comparing the keys
                      final isNewChild = child.key != null &&
                          child.key == ValueKey<int>(loaded.currentStep);

                      final tween = isNewChild
                          ? Tween(
                              begin: beginOffsetNewChild,
                              end: endOffsetNewChild,
                            )
                          : Tween(
                              begin: beginOffsetOldChild,
                              end: endOffsetOldChild,
                            );

                      return SlideTransition(
                        position: animation.drive(
                          tween.chain(
                            CurveTween(curve: Curves.easeInOutCirc),
                          ),
                        ),
                        child: child,
                      );
                    },
                    duration: const Duration(milliseconds: 350),
                    child: _getCurrentStepPage(
                      currentStep: loaded.currentStep,
                    ),
                  ),
                  Positioned(
                    top: 25,
                    right: 0,
                    child: ProgressDots(
                      currentStep: loaded.currentStep,
                      totalSteps: loaded.totalSteps,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _getCurrentStepPage({required int currentStep}) {
    switch (currentStep) {
      case 0:
        return const FullStrength(key: ValueKey<int>(0));
      case 1:
        return const PowerPlay(key: ValueKey<int>(1));
      case 2:
        return const FullStrength(key: ValueKey<int>(2));
      default:
        return const Center(
          key: ValueKey<int>(-1),
          child: CircularProgressIndicator(),
        );
    }
  }
}
