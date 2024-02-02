import 'package:flutter/foundation.dart';
import 'package:flutter_project_template_firebase/models/team_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@singleton
class HiveDataStore {
  static const teamsBoxName = 'teams';

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter<Team>(TeamAdapter());

    await Hive.openBox<Team>(teamsBoxName);
  }

  ValueListenable<Box<Team>> teamsListenable() {
    return Hive.box<Team>(teamsBoxName).listenable();
  }
}
