import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teams_page_state.dart';
part 'teams_page_cubit.freezed.dart';

class TeamsPageCubit extends Cubit<TeamsPageState> {
  TeamsPageCubit() : super(TeamsPageState.initial());
}
