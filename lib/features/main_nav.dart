import 'package:flutter/material.dart';
import 'package:hockey_mob/gen/assets.gen.dart';
import 'package:hockey_mob/routes/paths/paths.dart';
import 'package:hockey_mob/shared/themes/color_themes.dart';
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
    const _navColor = ColorFilter.mode(
      ColorThemes.neutral700,
      BlendMode.srcIn,
    );

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
            icon: Assets.icons.scoreboard.svg(
              colorFilter: const ColorFilter.mode(
                ColorThemes.neutral700,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.scoreboard.svg(),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.puck.svg(colorFilter: _navColor),
            activeIcon: Assets.icons.puck.svg(),
            label: 'Teams',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.star.svg(colorFilter: _navColor),
            activeIcon: Assets.icons.star.svg(),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.hamburger.svg(colorFilter: _navColor),
            activeIcon: Assets.icons.hamburger.svg(),
            label: 'Following',
          ),
        ],
      ),
    );
  }
}
