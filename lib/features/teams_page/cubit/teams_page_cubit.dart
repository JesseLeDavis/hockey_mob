import 'package:bloc/bloc.dart';
import 'package:flutter_project_template_firebase/constants/teams_list.dart';
import 'package:flutter_project_template_firebase/infrastructure/injection/injection.dart';
import 'package:flutter_project_template_firebase/models/team_model.dart';
import 'package:flutter_project_template_firebase/persistance/hive_data_store.dart';
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
            followedTeamList:
                getIt<HiveDataStore>().selectedTeams(),
                
          ),
        );
}
