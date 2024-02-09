import 'package:flutter_project_template_firebase/routes/paths/path.dart';

class Paths {
  const Paths._();

  static MainNavPath get mainNav => MainNavPath();
  static TeamsPath get teams => TeamsPath();
  static FavoriteTeamsPath get favoriteTeams => FavoriteTeamsPath();
  static TeamPath get team => TeamPath();
}

class MainNavPath extends Path {
  MainNavPath() : super('main-nav');
}

class TeamsPath extends Path {
  TeamsPath() : super('teams');
}

class FavoriteTeamsPath extends Path {
  FavoriteTeamsPath() : super('favorite-teams');
}

class TeamPath extends Path {
  TeamPath() : super('team');
}
