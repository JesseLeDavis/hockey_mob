import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/constants/teams_list.dart';
import 'package:flutter_project_template_firebase/features/team_page/cubit/team_page_cubit.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:go_router/go_router.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TeamPageCubit>(),
      child: TeamView(
        id: id,
      ),
    );
  }
}

class TeamView extends StatelessWidget {
  const TeamView({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final team = nhlTeams.firstWhere((team) => team.id == id);
    return BlocBuilder<TeamPageCubit, TeamPageState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: CircularProgressIndicator.new,
          loaded: (loaded) {
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 90,
                title: Row(
                  children: [
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: Container(
                        height: 30,
                        width: 30,
                        color: ColorThemes.primary,
                      ),
                    ),
                    gapW4,
                    Text(
                      team.teamName,
                      style: context.displayLarge,
                    ),
                  ],
                ),
              ),
              body: Column(
                children: [MenuRow(index: loaded.menuIndex)],
              ),
            );
          },
        );
      },
    );
  }
}

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
            return Container(
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
            );
          },
        );
      },
    );
  }
}
