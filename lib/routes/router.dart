import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hockey_mob/routes/app_routes.dart';
import 'package:hockey_mob/routes/paths/paths.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  final GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');
  final ValueKey<String> scaffoldKey = const ValueKey<String>('scaffold');

  late final GoRouter router = GoRouter(
    routes: appRoutes(),
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: Paths.teams.path,
    errorBuilder: (context, state) => const Center(
      child: Text('error'),
    ),
  );
}
