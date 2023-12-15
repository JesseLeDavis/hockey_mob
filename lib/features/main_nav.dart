import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/features/teams_page/teams_page.dart';
import 'package:flutter_project_template_firebase/gen/assets.gen.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';

class MainNavPage extends StatelessWidget {
  const MainNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainNavView();
  }
}

class MainNavView extends StatefulWidget {
  const MainNavView({
    super.key,
  });

  @override
  State<MainNavView> createState() => _MainNavViewState();
}

class _MainNavViewState extends State<MainNavView> {
  int _currentIndex = 0;
  final screens = [
    const SizedBox(),
    const TeamsPage(),
    const SizedBox(),
    const SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
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
