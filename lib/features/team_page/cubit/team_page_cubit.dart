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

  void increaseStep() {
    state.mapOrNull(
      loaded: (loaded) {
        if (loaded.currentStep < loaded.totalSteps - 1) {
          emit(
            loaded.copyWith(
              previousStep: loaded.currentStep,
              currentStep: loaded.currentStep + 1,
            ),
          );
        }
      },
    );
  }

  void setDirection(bool left) {
    state.mapOrNull(
      loaded: (loaded) {
        emit(
          loaded.copyWith(
            isLeft: left,
          ),
        );
      },
    );
  }

  void decreaseStep() {
    state.mapOrNull(
      loaded: (loaded) {
        if (loaded.currentStep > 0) {
          emit(
            loaded.copyWith(
              previousStep: loaded.currentStep,
              currentStep: loaded.currentStep - 1,
            ),
          );
        }
      },
    );
  }
}
