import 'package:flutter/material.dart';

import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
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
        appBarTheme: const AppBarTheme(
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
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  TextStyle get displayLarge => textTheme.displayLarge!;
  TextStyle get largeTitle => textTheme.displayMedium!;
  TextStyle get title1 => textTheme.headlineLarge!;
  TextStyle get title1Bold =>
      textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.w800);
  TextStyle get title2 => textTheme.headlineMedium!;
  TextStyle get title2Bold =>
      textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w800);
  TextStyle get title3 => textTheme.headlineSmall!;
  TextStyle get headline => textTheme.titleLarge!;
  TextStyle get input => textTheme.titleMedium!;
  TextStyle get body => textTheme.bodyLarge!;
  TextStyle get callout => textTheme.bodyMedium!;
  TextStyle get subhead => textTheme.labelLarge!;
  TextStyle get subheadBold =>
      textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get caption => textTheme.labelSmall!;
  TextStyle get title => textTheme.titleSmall!;
}
