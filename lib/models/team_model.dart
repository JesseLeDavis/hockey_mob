import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Team extends Equatable {
  const Team({
    required this.teamName,
    required this.largeLogo,
    required this.smallLogol,
    required this.primaryColor,
    required this.secondaryColor,
  });
  final String teamName;
  final SvgPicture largeLogo;
  final SvgPicture smallLogol;
  final Color primaryColor;
  final Color secondaryColor;

  @override
  List<Object?> get props => throw UnimplementedError();
}
