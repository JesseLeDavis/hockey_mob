import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/app/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/gen/assets.gen.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TeamsView();
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
    return Scaffold(
      appBar: AppBar(
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
          Container(
            width: double.infinity,
            color: ColorThemes.neutral900,
            child: const MenuRow(index: 0),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TeamContainer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TeamContainer extends StatefulWidget {
  const TeamContainer({
    super.key,
  });

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
            Assets.icons.anaheimDucksSmall.svg(),
            gapW8,
            Text(
              'Anaheim Ducks',
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
