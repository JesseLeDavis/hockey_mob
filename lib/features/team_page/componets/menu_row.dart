import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hockey_mob/app/view/app.dart';
import 'package:hockey_mob/constants/gaps.dart';
import 'package:hockey_mob/features/team_page/cubit/team_page_cubit.dart';
import 'package:hockey_mob/shared/themes/color_themes.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 12.0;

    return BlocBuilder<TeamPageCubit, TeamPageState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: CircularProgressIndicator.new,
          loaded: (loaded) {
            final cubit = context.read<TeamPageCubit>();
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: ColorThemes.neutral900,
                  child: Row(
                    children: [
                      gapW24,
                      GestureDetector(
                        onTap: () {
                          cubit.updateMenuIndex(0);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: horizontalPadding,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: index == 0
                                      ? ColorThemes.primary
                                      : Colors.transparent,
                                  width: 2.5,
                                ),
                              ),
                            ),
                            child: Text(
                              'Lines',
                              style: context.subheadBold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          cubit.updateMenuIndex(1);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: horizontalPadding,
                            right: horizontalPadding,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: index == 1
                                      ? ColorThemes.primary
                                      : Colors.transparent,
                                  width: 2.5,
                                ),
                              ),
                            ),
                            child: Text(
                              'Schedule',
                              style: context.subheadBold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          cubit.updateMenuIndex(2);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: horizontalPadding,
                            right: horizontalPadding,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: index == 2
                                      ? ColorThemes.primary
                                      : Colors.transparent,
                                  width: 2.5,
                                ),
                              ),
                            ),
                            child: Text(
                              'Stats',
                              style: context.subheadBold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          cubit.updateMenuIndex(3);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: horizontalPadding,
                            right: horizontalPadding,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: index == 3
                                      ? ColorThemes.primary
                                      : Colors.transparent,
                                  width: 2.5,
                                ),
                              ),
                            ),
                            child: Text(
                              'News',
                              style: context.subheadBold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
