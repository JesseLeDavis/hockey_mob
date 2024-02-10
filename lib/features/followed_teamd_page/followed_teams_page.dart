import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/persistance/hive_data_store.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    final _borderRadius = BorderRadius.circular(12);

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
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                crossAxisCount: 2,
              ),
              itemCount: boxList.length,
              itemBuilder: (context, index) {
                final team = boxList[index];
                return Material(
                  borderRadius: _borderRadius,
                  color: Color(int.parse(team.primaryColor)),
                  child: InkWell(
                    borderRadius: _borderRadius,
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: _borderRadius,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(team.largeLogo),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Spacer(
                                flex: 40,
                              ),
                              Expanded(
                                flex: 80,
                                child: Text(
                                  team.teamName,
                                  style: context.headline,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          gapH4,
                          const Text('vs Some Team'),
                          const Text('at Dec 15 @ 3:30'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}