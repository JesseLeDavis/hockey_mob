import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/constants/teams_list.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return TeamView(
      id: id,
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Row(
          children: [
            gapW4,
            Text(
              team.teamName,
              style: context.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
