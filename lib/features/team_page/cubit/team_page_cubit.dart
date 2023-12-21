import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_page_state.dart';
part 'team_page_cubit.freezed.dart';

class TeamPageCubit extends Cubit<TeamPageState> {
  TeamPageCubit() : super(const TeamPageState.initial());
}
