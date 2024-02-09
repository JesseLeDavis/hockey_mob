import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'followed_team_state.dart';
part 'followed_team_cubit.freezed.dart';

class FollowedTeamCubit extends Cubit<FollowedTeamState> {
  FollowedTeamCubit() : super(FollowedTeamState.initial());
}
