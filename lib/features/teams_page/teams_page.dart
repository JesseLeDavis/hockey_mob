import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/app/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/features/teams_page/cubit/teams_page_cubit.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            toolbarHeight: 90,
            title: Row(
              children: [
                gapW4,
                Text(
                  'Teams',
                  style: context.displayLarge,
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
                            teamName: team.teamName,
                            teamLogo: team.largeLogo,
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
    required this.teamName,
    required this.teamLogo,
  });

  final String teamName;
  final SvgPicture teamLogo;

  @override
  State<TeamContainer> createState() => _TeamContainerState();
}

class _TeamContainerState extends State<TeamContainer> {
  bool isSelectred = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {}),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorThemes.neutral800,
        ),
        width: double.infinity,
        child: Row(
          children: [
            widget.teamLogo,
            gapW8,
            Text(
              widget.teamName,
              style: context.body,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => setState(() {
                isSelectred = !isSelectred;
              }),
              child: Icon(
                Icons.star_rounded,
                color: isSelectred
                    ? ColorThemes.neutral300
                    : ColorThemes.neutral600,
              ),
            ),
          ],
        ),
      ),
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
    return Row(
      children: [
        gapW24,
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
            ),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        index == 0 ? ColorThemes.primary : Colors.transparent,
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
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        index == 1 ? ColorThemes.primary : Colors.transparent,
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
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        index == 2 ? ColorThemes.primary : Colors.transparent,
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
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        index == 3 ? ColorThemes.primary : Colors.transparent,
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
    );
  }
}
