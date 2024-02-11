import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hockey_mob/app/view/app.dart';
import 'package:hockey_mob/constants/gaps.dart';
import 'package:hockey_mob/constants/teams_list.dart';
import 'package:hockey_mob/features/team_page/componets/menu_row.dart';
import 'package:hockey_mob/features/team_page/cubit/team_page_cubit.dart';
import 'package:hockey_mob/features/team_page/lines_view/lines_view.dart';
import 'package:hockey_mob/gen/assets.gen.dart';
import 'package:hockey_mob/infrastructure/injection/injection.dart';
import 'package:hockey_mob/shared/themes/color_themes.dart';
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
                      child: Assets.icons.leftLarge.svg(),
                    ),
                    gapW4,
                    Text(
                      // TODO FIX IN TIME
                      'Team',
                      style: context.largeTitle,
                    ),
                  ],
                ),
                actions: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Assets.icons.plus.svg(),
                      ),
                      SvgPicture.asset(team.largeLogo),
                      gapW16,
                    ],
                  )
                ],
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
