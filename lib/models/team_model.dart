import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'team_model.g.dart';

@HiveType(typeId: 0)
class Team extends Equatable {
  const Team( {
    required this.id,
    required this.teamName,
    required this.largeLogo,
    required this.smallLogol,
    required this.primaryColor,
    required this.secondaryColor,
    required this.combinedName, 
    required this.teamLocation,
    required this.teamAbr,
  });
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String combinedName;
  @HiveField(2)
  final String largeLogo;
  @HiveField(3)
  final String smallLogol;
  @HiveField(4)
  final String primaryColor;
  @HiveField(5)
  final String secondaryColor;
  @HiveField(6)
  final String teamLocation;
  @HiveField(7)
  final String teamName;
  @HiveField(8)
  final String teamAbr;


  @override
  List<Object?> get props => [
        id,
        combinedName,
        largeLogo,
        smallLogol,
        primaryColor,
        secondaryColor,
        teamLocation,
        teamName,
        teamAbr,
      ];
}
