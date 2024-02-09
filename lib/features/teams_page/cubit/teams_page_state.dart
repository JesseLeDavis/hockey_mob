part of 'teams_page_cubit.dart';

@freezed
class TeamsPageState with _$TeamsPageState {
  const factory TeamsPageState({
    required List<Team> teamsList,
    required List<Team> followedTeamList,
  }) = _TeamPageState;
}
