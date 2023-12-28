import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/constants/teams_list.dart';
import 'package:flutter_project_template_firebase/features/team_page/componets/menu_row.dart';
import 'package:flutter_project_template_firebase/features/team_page/cubit/team_page_cubit.dart';
import 'package:flutter_project_template_firebase/features/team_page/lines_view/lines_view.dart';
import 'package:flutter_project_template_firebase/gen/assets.gen.dart';
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
                      child: const Icon(
                        Icons.arrow_back,
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
                children: [
                  MenuRow(index: loaded.menuIndex),
                  Expanded(
                    child: _getCurrentStepPage(currentStep: loaded.menuIndex),
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
        return const LinesView();
      case 1:
        return Container(
          height: 30,
          width: 30,
          color: ColorThemes.neutral500,
        );
      case 2:
        return Container(
          height: 30,
          width: 30,
          color: ColorThemes.neutral900,
        );
      default:
        return const Center(
          key: ValueKey<int>(-1),
          child: CircularProgressIndicator(),
        );
    }
  }
}
