import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/gen/assets.gen.dart';

class Team {
  Team({
    required this.teamName,
    required this.largeLogo,
    required this.primaryColor,
    required this.secondaryColor,
  });
  final String teamName;
  final SvgGenImage largeLogo;
  final Color primaryColor;
  final Color secondaryColor;
}
