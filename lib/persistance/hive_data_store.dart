import 'package:flutter/foundation.dart';
import 'package:flutter_project_template_firebase/models/team_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@singleton
class HiveDataStore {
  static const teamsBoxName = 'followed_teams';

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter<Team>(TeamAdapter());

    await Hive.openBox<Team>(teamsBoxName);
  }

  Future<void> toggleFavoriteTeam(Team team) async {
    final box = Hive.box<Team>(teamsBoxName);
    if (box.values.toList().contains(team)) {
      await box.delete(team.id);
    } else {
      await box.put(team.id, team);
    }
  }

  ValueListenable<Box<Team>> teamsListenable() {
    return Hive.box<Team>(teamsBoxName).listenable();
  }

  List<Team> selectedTeams() {
    return Hive.box<Team>(teamsBoxName).values.toList();
  }
}
