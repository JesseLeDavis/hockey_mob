import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/app/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/features/teams_page/cubit/teams_page_cubit.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/models/team_model.dart';
import 'package:flutter_project_template_firebase/persistance/hive_data_store.dart';
import 'package:flutter_project_template_firebase/routes/paths/paths.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:go_router/go_router.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TeamsPageCubit>(),
      child: const TeamsView(),
    );
  }
}

class TeamsView extends StatefulWidget {
  const TeamsView({
    super.key,
  });

  @override
  State<TeamsView> createState() => _TeamsViewState();
}

class _TeamsViewState extends State<TeamsView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsPageCubit, TeamsPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                gapW4,
                Text(
                  'Teams',
                ),
              ],
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.teamsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final team = state.teamsList[index];
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (index == 0) gapH12,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TeamContainer(
                            followedTeams: state.followedTeamList,
                            team: team,
                          ),
                        ),
                        if (index == state.teamsList.length - 1) gapH12,
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return gapH12;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TeamContainer extends StatefulWidget {
  const TeamContainer({
    super.key,
    required this.team,
    required this.followedTeams,
  });
  final Team team;
  final List<Team> followedTeams;

  @override
  State<TeamContainer> createState() => _TeamContainerState();
}

class _TeamContainerState extends State<TeamContainer> {
  @override
  Widget build(BuildContext context) {
    final team = widget.team;
    final isSelectred = widget.followedTeams.contains(widget.team);

    return GestureDetector(
      onTap: () => context.pushNamed(
        Paths.team.name,
        pathParameters: {
          'id': team.id,
        },
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorThemes.neutral800,
        ),
        width: double.infinity,
        child: Row(
          children: [
            team.largeLogo,
            gapW8,
            Text(
              team.teamName,
              style: context.body,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () async {
                await getIt<HiveDataStore>().toggleFavoriteTeam(team);
              },
              child: Container(
                color: Colors.transparent,
                width: 60,
                height: 40,
                child: Icon(
                  Icons.star_rounded,
                  color: isSelectred
                      ? ColorThemes.neutral300
                      : ColorThemes.neutral600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
