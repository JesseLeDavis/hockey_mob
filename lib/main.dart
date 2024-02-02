import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_project_template_firebase/app/app.dart';
import 'package:flutter_project_template_firebase/bootstrap.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';
import 'package:flutter_project_template_firebase/persistance/hive_data_store.dart';

Future<void> main() async {
  await bootstrap(
    builder: () => const App(flavor: Flavor.production),
    initializeFirebase: () async {
      await Firebase.initializeApp(
        name: '',
      );
    },
  );
}
