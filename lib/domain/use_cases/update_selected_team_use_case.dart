import 'package:injectable/injectable.dart';
import 'package:sportly/domain/features/teams/models/team.f.dart';
import 'package:sportly/domain/features/teams/teams_repository.dart';

@injectable
class UpdateSelectedTeamUseCase {
  UpdateSelectedTeamUseCase(this._teamsRepository);

  final TeamsRepository _teamsRepository;

  void call(Team team) => _teamsRepository.updateTeamIndicator(team);
}
