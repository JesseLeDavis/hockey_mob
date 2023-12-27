import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'team_page_state.dart';
part 'team_page_cubit.freezed.dart';

@injectable
class TeamPageCubit extends Cubit<TeamPageState> {
  TeamPageCubit() : super(const TeamPageState.initial()) {
    init();
  }

  void init() {
    emit(const TeamPageState.loaded());
  }

  void updateMenuIndex(int index) {
    state.mapOrNull(
      loaded: (loaded) => emit(loaded.copyWith(menuIndex: index)),
    );
  }
}
