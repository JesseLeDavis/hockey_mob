// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeamAdapter extends TypeAdapter<Team> {
  @override
  final int typeId = 0;

  @override
  Team read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Team(
      id: fields[0] as String,
      teamName: fields[7] as String,
      largeLogo: fields[2] as String,
      smallLogol: fields[3] as String,
      primaryColor: fields[4] as String,
      secondaryColor: fields[5] as String,
      combinedName: fields[1] as String,
      teamLocation: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Team obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.combinedName)
      ..writeByte(2)
      ..write(obj.largeLogo)
      ..writeByte(3)
      ..write(obj.smallLogol)
      ..writeByte(4)
      ..write(obj.primaryColor)
      ..writeByte(5)
      ..write(obj.secondaryColor)
      ..writeByte(6)
      ..write(obj.teamLocation)
      ..writeByte(7)
      ..write(obj.teamName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
