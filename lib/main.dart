import 'package:firebase_core/firebase_core.dart';
import 'package:hockey_mob/app/app.dart';
import 'package:hockey_mob/bootstrap.dart';
import 'package:hockey_mob/infrastructure/config/flavor.dart';

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
