import 'package:hockey_mob/app/app.dart';
import 'package:hockey_mob/bootstrap.dart';
import 'package:hockey_mob/infrastructure/config/flavor.dart';

void main() {
  bootstrap(builder: () => const App(flavor: Flavor.staging));
}
