import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/gen/assets.gen.dart';
import 'package:flutter_project_template_firebase/routes/paths/paths.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:go_router/go_router.dart';

class MainNavPage extends StatelessWidget {
  const MainNavPage({
    super.key,
    required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return MainNavView(
      child: widget,
    );
  }
}

class MainNavView extends StatefulWidget {
  const MainNavView({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<MainNavView> createState() => _MainNavViewState();
}

class _MainNavViewState extends State<MainNavView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              context.goNamed(Paths.teams.name);
              break;
            case 1:
              context.goNamed(Paths.teams.name);
              break;
            case 2:
              context.goNamed(Paths.favoriteTeams.name);
              break;
            case 3:
              context.goNamed(Paths.teams.name);
              break;
          }
        },
        backgroundColor: ColorThemes.neutral900,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: ColorThemes.neutral700,
        selectedItemColor: ColorThemes.pureWhite,
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.scoreboard.svg(color: ColorThemes.neutral700),
            activeIcon: Assets.icons.scoreboard.svg(),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.puck.svg(color: ColorThemes.neutral700),
            activeIcon: Assets.icons.puck.svg(),
            label: 'Teams',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.star.svg(color: ColorThemes.neutral700),
            activeIcon: Assets.icons.star.svg(),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.hamburger.svg(color: ColorThemes.neutral700),
            activeIcon: Assets.icons.hamburger.svg(),
            label: 'Following',
          ),
        ],
      ),
    );
  }
}
