import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor_banner.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/routes/app_routes.dart';
import 'package:flutter_project_template_firebase/routes/router.dart';
import 'package:go_router/go_router.dart';

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
