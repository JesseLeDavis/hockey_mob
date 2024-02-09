// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teams_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamsPageState {
  List<Team> get teamsList => throw _privateConstructorUsedError;
  List<Team> get followedTeamList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamsPageStateCopyWith<TeamsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsPageStateCopyWith<$Res> {
  factory $TeamsPageStateCopyWith(
          TeamsPageState value, $Res Function(TeamsPageState) then) =
      _$TeamsPageStateCopyWithImpl<$Res, TeamsPageState>;
  @useResult
  $Res call({List<Team> teamsList, List<Team> followedTeamList});
}

/// @nodoc
class _$TeamsPageStateCopyWithImpl<$Res, $Val extends TeamsPageState>
    implements $TeamsPageStateCopyWith<$Res> {
  _$TeamsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamsList = null,
    Object? followedTeamList = null,
  }) {
    return _then(_value.copyWith(
      teamsList: null == teamsList
          ? _value.teamsList
          : teamsList // ignore: cast_nullable_to_non_nullable
              as List<Team>,
      followedTeamList: null == followedTeamList
          ? _value.followedTeamList
          : followedTeamList // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamPageStateImplCopyWith<$Res>
    implements $TeamsPageStateCopyWith<$Res> {
  factory _$$TeamPageStateImplCopyWith(
          _$TeamPageStateImpl value, $Res Function(_$TeamPageStateImpl) then) =
      __$$TeamPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Team> teamsList, List<Team> followedTeamList});
}

/// @nodoc
class __$$TeamPageStateImplCopyWithImpl<$Res>
    extends _$TeamsPageStateCopyWithImpl<$Res, _$TeamPageStateImpl>
    implements _$$TeamPageStateImplCopyWith<$Res> {
  __$$TeamPageStateImplCopyWithImpl(
      _$TeamPageStateImpl _value, $Res Function(_$TeamPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamsList = null,
    Object? followedTeamList = null,
  }) {
    return _then(_$TeamPageStateImpl(
      teamsList: null == teamsList
          ? _value._teamsList
          : teamsList // ignore: cast_nullable_to_non_nullable
              as List<Team>,
      followedTeamList: null == followedTeamList
          ? _value._followedTeamList
          : followedTeamList // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ));
  }
}

/// @nodoc

class _$TeamPageStateImpl implements _TeamPageState {
  const _$TeamPageStateImpl(
      {required final List<Team> teamsList,
      required final List<Team> followedTeamList})
      : _teamsList = teamsList,
        _followedTeamList = followedTeamList;

  final List<Team> _teamsList;
  @override
  List<Team> get teamsList {
    if (_teamsList is EqualUnmodifiableListView) return _teamsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamsList);
  }

  final List<Team> _followedTeamList;
  @override
  List<Team> get followedTeamList {
    if (_followedTeamList is EqualUnmodifiableListView)
      return _followedTeamList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followedTeamList);
  }

  @override
  String toString() {
    return 'TeamsPageState(teamsList: $teamsList, followedTeamList: $followedTeamList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._teamsList, _teamsList) &&
            const DeepCollectionEquality()
                .equals(other._followedTeamList, _followedTeamList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_teamsList),
      const DeepCollectionEquality().hash(_followedTeamList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamPageStateImplCopyWith<_$TeamPageStateImpl> get copyWith =>
      __$$TeamPageStateImplCopyWithImpl<_$TeamPageStateImpl>(this, _$identity);
}

abstract class _TeamPageState implements TeamsPageState {
  const factory _TeamPageState(
      {required final List<Team> teamsList,
      required final List<Team> followedTeamList}) = _$TeamPageStateImpl;

  @override
  List<Team> get teamsList;
  @override
  List<Team> get followedTeamList;
  @override
  @JsonKey(ignore: true)
  _$$TeamPageStateImplCopyWith<_$TeamPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
