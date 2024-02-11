import 'package:firebase_core/firebase_core.dart';
import 'package:hockey_mob/app/view/app.dart';
import 'package:hockey_mob/bootstrap.dart';
import 'package:hockey_mob/infrastructure/config/flavor.dart';

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
