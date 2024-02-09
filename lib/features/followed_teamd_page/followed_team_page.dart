import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';

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
    );
  }
}
