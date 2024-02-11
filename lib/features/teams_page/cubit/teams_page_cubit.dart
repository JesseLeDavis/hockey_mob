import 'package:bloc/bloc.dart';
import 'package:hockey_mob/constants/teams_list.dart';
import 'package:hockey_mob/infrastructure/injection/injection.dart';
import 'package:hockey_mob/models/team_model.dart';
import 'package:hockey_mob/persistance/hive_data_store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'teams_page_state.dart';
part 'teams_page_cubit.freezed.dart';

@injectable
class TeamsPageCubit extends Cubit<TeamsPageState> {
  TeamsPageCubit()
      : super(
          TeamsPageState(
            teamsList: nhlTeams,
            followedTeamList: getIt<HiveDataStore>().selectedTeams(),
          ),
        );
}
