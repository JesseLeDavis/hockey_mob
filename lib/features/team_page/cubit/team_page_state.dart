part of 'team_page_cubit.dart';

enum TeamPageContent {
  lines,
  schedule,
  stats,
  news,
}

@freezed
class TeamPageState with _$TeamPageState {
  const factory TeamPageState.initial() = _Initial;
  const factory TeamPageState.error() = _Error;
  const factory TeamPageState.loaded({
    @Default(0) int menuIndex,
    @Default(TeamPageContent.lines) TeamPageContent teamPageContent,
  }) = _Loaded;

  const TeamPageState._();
}
