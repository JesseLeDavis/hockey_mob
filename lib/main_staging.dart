import 'package:flutter_project_template_firebase/app/app.dart';
import 'package:flutter_project_template_firebase/bootstrap.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';

void main() {
  bootstrap(builder: () => const App(flavor: Flavor.staging));
}
