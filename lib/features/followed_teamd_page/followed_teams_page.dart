import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/persistance/hive_data_store.dart';

class FollowedTeamsPage extends StatelessWidget {
  const FollowedTeamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FollowedTeamsView();
  }
}

class FollowedTeamsView extends StatelessWidget {
  const FollowedTeamsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            gapW4,
            Text(
              'Following',
            ),
          ],
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: getIt<HiveDataStore>().teamsListenable(),
        builder: (_, box, __) {
          final boxList = box.values.toList();
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
            ),
            itemCount: boxList.length,
            itemBuilder: (context, index) {
              final team = boxList[index];
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(int.parse(team.primaryColor)),
                ),
                child: Row(
                  children: [Text(team.teamName)],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
