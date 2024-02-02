import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

part 'team_model.g.dart';

@HiveType(typeId: 0)
class Team extends Equatable {
  const Team({
    required this.id,
    required this.teamName,
    required this.largeLogo,
    required this.smallLogol,
    required this.primaryColor,
    required this.secondaryColor,
  });
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String teamName;
  @HiveField(2)
  final SvgPicture largeLogo;
  @HiveField(3)
  final SvgPicture smallLogol;
  @HiveField(4)
  final Color primaryColor;
  @HiveField(5)
  final Color secondaryColor;

  void thisIsMyFuction() {}

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
