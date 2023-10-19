import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor_banner.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/routes/app_routes.dart';
import 'package:flutter_project_template_firebase/routes/router.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:flutter_project_template_firebase/shared/themes/text_themes.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.flavor}) : super(key: key);

  final Flavor flavor;

  @override
  Widget build(BuildContext context) {
    return _App(flavor: flavor);
  }
}

class _App extends StatefulWidget {
  const _App({Key? key, required this.flavor}) : super(key: key);

  final Flavor flavor;

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  late final GoRouter _goRouter;

  @override
  void initState() {
    super.initState();

    _goRouter = getIt<AppRouter>().router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorThemes.pureBlack,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: ColorThemes.neutral900,
        ),
        fontFamily: GoogleFonts.inter().fontFamily,
        textTheme: TextTheme(
          displayLarge: TextThemes.neutral300.displayLarge,
          displayMedium: TextThemes.neutral300.largeTitle,
          headlineLarge: TextThemes.neutral300.title1,
          headlineMedium: TextThemes.neutral300.title2,
          headlineSmall: TextThemes.neutral300.title3,
          titleLarge: TextThemes.neutral200.headline,
          titleMedium: TextThemes.neutral300.body,
          titleSmall: TextThemes.neutral300.callout,
          bodyLarge: TextThemes.neutral300.body,
          bodyMedium: TextThemes.neutral300.callout,
          bodySmall: TextThemes.neutral300.subhead,
          labelLarge: TextThemes.neutral300.subhead,
          labelMedium: TextThemes.neutral300.footnote,
          labelSmall: TextThemes.neutral300.caption,
        ),
      ),
      title: 'app-name',
      key: const Key(''),
      debugShowCheckedModeBanner: false,
      routerConfig: _goRouter,
    );
  }
}

extension ThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
