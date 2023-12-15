import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/gen/assets.gen.dart';
import 'package:flutter_project_template_firebase/models/team_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'teams_page_state.dart';
part 'teams_page_cubit.freezed.dart';

@injectable
class TeamsPageCubit extends Cubit<TeamsPageState> {
  TeamsPageCubit()
      : super(
          TeamsPageState(
            teamsList: [
              Team(
                teamName: 'Anaheim Ducks',
                largeLogo: Assets.icons.anaheimDucksLarge.svg(),
                smallLogol: Assets.icons.anaheimDucksSmall.svg(),
                primaryColor: const Color(0xFFF47A38),
                secondaryColor: const Color(0xFFB9975B),
              ),
              Team(
                teamName: 'Arizona Coyotes',
                largeLogo: Assets.icons.arizonaCoyotesLarge.svg(),
                smallLogol: Assets.icons.arizonaCoyotesLarge.svg(),
                primaryColor: const Color(0xFF862633),
                secondaryColor: const Color(0xFFDDCBA4),
              ),
              Team(
                teamName: 'Boston Bruins',
                largeLogo: Assets.icons.bostonBruinsLarge.svg(),
                smallLogol: Assets.icons.bostonBruinsLarge.svg(),
                primaryColor: const Color(0xFFF47A38),
                secondaryColor: const Color(0xFF010101),
              ),
              Team(
                teamName: 'Buffalo Sabres',
                largeLogo: Assets.icons.buffaloSabresLarge.svg(),
                smallLogol: Assets.icons.buffaloSabresSmall.svg(),
                primaryColor: const Color(0xFF041E42),
                secondaryColor: const Color(0xFFFFB81C),
              ),
              Team(
                teamName: 'Calgary Flames',
                largeLogo: Assets.icons.calgaryFlamesLarge.svg(),
                smallLogol: Assets.icons.calgaryFlamesSmall.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFFF1BE48),
              ),
              Team(
                teamName: 'Carolina Hurricanes',
                largeLogo: Assets.icons.carolinaHurricanesLarge.svg(),
                smallLogol: Assets.icons.carolinaHurricanesLarge.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFF010101),
              ),
              Team(
                teamName: 'Chicago Blackhawks',
                largeLogo: Assets.icons.chicagoBlackhawksLarge.svg(),
                smallLogol: Assets.icons.chicagoBlackhawksSmall.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFFFFD100),
              ),
              Team(
                teamName: 'Colorado Avalanche',
                largeLogo: Assets.icons.coloradoAvalancheLarge.svg(),
                smallLogol: Assets.icons.coloradoAvalancheSmall.svg(),
                primaryColor: const Color(0xFF6F263D),
                secondaryColor: const Color(0xFF236192),
              ),
              Team(
                teamName: 'Columbus Blue Jackets',
                largeLogo: Assets.icons.colombusBlueJacketsLarge.svg(),
                smallLogol: Assets.icons.colombusBlueJacketsSmall.svg(),
                primaryColor: const Color(0xFF041E42),
                secondaryColor: const Color(0xFFC8102E),
              ),
              Team(
                teamName: 'Dallas Stars',
                largeLogo: Assets.icons.dallasStarsLarge.svg(),
                smallLogol: Assets.icons.dallasStarsSmall.svg(),
                primaryColor: const Color(0xFF006341),
                secondaryColor: const Color(0xFFFFFFFF),
              ),
              Team(
                teamName: 'Detroit Red Wings',
                largeLogo: Assets.icons.detroitRedWingsLarge.svg(),
                smallLogol: Assets.icons.detroitRedWingsLarge.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFFFFFFFF),
              ),
              Team(
                teamName: 'Edmonton Oilers',
                largeLogo: Assets.icons.edmontonOilersLarge.svg(),
                smallLogol: Assets.icons.edmontonOilersLarge.svg(),
                primaryColor: const Color(0xFF041E42),
                secondaryColor: const Color(0xFFFC4C02),
              ),
              Team(
                teamName: 'Florida Panthers',
                largeLogo: Assets.icons.floridaPanthersLarge.svg(),
                smallLogol: Assets.icons.floridaPanthersLarge.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFF041E42),
              ),
              Team(
                teamName: 'Los Angeles Kings',
                largeLogo: Assets.icons.losAngelesLarge.svg(),
                smallLogol: Assets.icons.losAngelesKingsSmall.svg(),
                primaryColor: const Color(0xFFA2AAAD),
                secondaryColor: const Color(0xFF010101),
              ),
              Team(
                teamName: 'Minnesota Wild',
                largeLogo: Assets.icons.minnesotaWildLarge.svg(),
                smallLogol: Assets.icons.minnesotaWildLarge.svg(),
                primaryColor: const Color(0xFF154734),
                secondaryColor: const Color(0xFFA6192E),
              ),
              Team(
                teamName: 'Montreal Canadiens',
                largeLogo: Assets.icons.montrealCanadiens.svg(),
                smallLogol: Assets.icons.montrealCanadiensSmall.svg(),
                primaryColor: const Color(0xFFA6192E),
                secondaryColor: const Color(0xFFFFFFFF),
              ),
              Team(
                teamName: 'Nashville Predators',
                largeLogo: Assets.icons.nashvillePredatorsLarge.svg(),
                smallLogol: Assets.icons.nashvillePredatorsSmall.svg(),
                primaryColor: const Color(0xFFFFB81C),
                secondaryColor: const Color(0xFF041E42),
              ),
              Team(
                teamName: 'New Jersey Devils',
                largeLogo: Assets.icons.newJerseyDevilsLarge.svg(),
                smallLogol: Assets.icons.newJerseyDevilsSmall.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFF010101),
              ),
              Team(
                teamName: 'New York Islanders',
                largeLogo: Assets.icons.newYorkIslandersLarge.svg(),
                smallLogol: Assets.icons.newYorkIslandersSmall.svg(),
                primaryColor: const Color(0xFF003087),
                secondaryColor: const Color(0xFFFC4C02),
              ),
              Team(
                teamName: 'New York Rangers',
                largeLogo: Assets.icons.newYorkRangersLarge.svg(),
                smallLogol: Assets.icons.newYorkRangersSmall.svg(),
                primaryColor: const Color(0xFF0033A0),
                secondaryColor: const Color(0xFFC8102E),
              ),
              Team(
                teamName: 'Ottawa Senators',
                largeLogo: Assets.icons.ottawaSenatorsLarge.svg(),
                smallLogol: Assets.icons.ottawaSenatorsSmall.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFF010101),
              ),
              Team(
                teamName: 'Philadelphia Flyers',
                largeLogo: Assets.icons.philadelphiaFlyersLarge.svg(),
                smallLogol: Assets.icons.philadelphiaFlyersSmall.svg(),
                primaryColor: const Color(0xFFFA4616),
                secondaryColor: const Color(0xFF010101),
              ),
              Team(
                teamName: 'Pittsburgh Penguins',
                largeLogo: Assets.icons.pittsburghPenguinsLarge.svg(),
                smallLogol: Assets.icons.pittsburghPenguinsSmall.svg(),
                primaryColor: const Color(0xFFFFB81C),
                secondaryColor: const Color(0xFF010101),
              ),
              Team(
                teamName: 'San Jose Sharks',
                largeLogo: Assets.icons.sanJoseSharksLarge.svg(),
                smallLogol: Assets.icons.sanJoseSharks.svg(),
                primaryColor: const Color(0xFF006272),
                secondaryColor: const Color(0xFFE57200),
              ),
              Team(
                teamName: 'Seattle Kraken',
                largeLogo: Assets.icons.seattleKrakenLarge.svg(),
                smallLogol: Assets.icons.seattleKrakenSmall.svg(),
                primaryColor: const Color(0xFF001628),
                secondaryColor: const Color(0xFF629EB5),
              ),
              Team(
                teamName: 'St. Louis Blues',
                largeLogo: Assets.icons.stLouisBluesLarge.svg(),
                smallLogol: Assets.icons.stLouisBluesSmall.svg(),
                primaryColor: const Color(0xFF041E42),
                secondaryColor: const Color(0xFFFFB81C),
              ),
              Team(
                teamName: 'Tampa Bay Lightning',
                largeLogo: Assets.icons.tampaBayLightningLarge.svg(),
                smallLogol: Assets.icons.tampaBayLightningSmall.svg(),
                primaryColor: const Color(0xFF00205B),
                secondaryColor: const Color(0xFFFFFFFF),
              ),
              Team(
                teamName: 'Toronto Maple Leafs',
                largeLogo: Assets.icons.torontoMapleLeafsLarge.svg(),
                smallLogol: Assets.icons.torontoMapleLeafsSmall.svg(),
                primaryColor: const Color(0xFF00205B),
                secondaryColor: const Color(0xFFFFFFFF),
              ),
              Team(
                teamName: 'Vancouver Canucks',
                largeLogo: Assets.icons.vancouverCanucksLarge.svg(),
                smallLogol: Assets.icons.vancouverCanucksSmall.svg(),
                primaryColor: const Color(0xFF00205B),
                secondaryColor: const Color(0xFFFFFFFF),
              ),
              Team(
                teamName: 'Vegas Golden Knights',
                largeLogo: Assets.icons.vegasGoldenKnightsLarge.svg(),
                smallLogol: Assets.icons.vegasGoldenKnightsSmall.svg(),
                primaryColor: const Color(0xFFB9975B),
                secondaryColor: const Color(0xFF333F48),
              ),
              Team(
                teamName: 'Washington Capitals',
                largeLogo: Assets.icons.washingtonCapitalsLarge.svg(),
                smallLogol: Assets.icons.washingtonCapitalsSmall.svg(),
                primaryColor: const Color(0xFFC8102E),
                secondaryColor: const Color(0xFF041E42),
              ),
              Team(
                teamName: 'Winnipeg Jets',
                largeLogo: Assets.icons.winnipegJetsLarge.svg(),
                smallLogol: Assets.icons.winnipegJetsSmall.svg(),
                primaryColor: const Color(0xFF041E42),
                secondaryColor: const Color(0xFFFFFFFF),
              ),
            ],
          ),
        );
}
