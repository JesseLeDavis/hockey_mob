import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/bootstrap.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';

void main() {
  bootstrap(
    builder: () => const App(flavor: Flavor.development),
    initializeFirebase: () async {
      await Firebase.initializeApp(
        name: '',
      );
    },
  );
}
