import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/features/main_nav.dart';

import 'package:go_router/go_router.dart';

List<RouteBase> appRoutes() {
  return [
    GoRoute(path: '/', builder: (context, state) => MainNavPage()),
  ];
}
