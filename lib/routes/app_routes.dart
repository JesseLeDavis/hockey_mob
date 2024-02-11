import 'package:flutter/material.dart';
import 'package:hockey_mob/features/followed_teamd_page/followed_teams_page.dart';
import 'package:hockey_mob/features/main_nav.dart';
import 'package:hockey_mob/features/team_page/team_page.dart';
import 'package:hockey_mob/features/teams_page/teams_page.dart';
import 'package:hockey_mob/routes/paths/paths.dart';

import 'package:go_router/go_router.dart';

List<RouteBase> appRoutes() {
  return [
    ShellRoute(
      routes: [
        GoRoute(
          path: Paths.teams.name,
          name: Paths.teams.name,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const TeamsPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: const TeamsPage(),
              );
            },
          ),
        ),
        GoRoute(
          path: Paths.favoriteTeams.name,
          name: Paths.favoriteTeams.name,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const FollowedTeamsPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: const FollowedTeamsPage(),
              );
            },
          ),
        ),
      ],
      builder: (context, state, child) => MainNavPage(
        widget: child,
      ),
    ),
    GoRoute(
      path: '/team/:id',
      name: Paths.team.name,
      pageBuilder: (context, state) => CustomTransitionPage(
        child: TeamPage(
          id: state.pathParameters['id']!,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: TeamPage(
              id: state.pathParameters['id']!,
            ),
          );
        },
      ),
    ),
  ];
}
