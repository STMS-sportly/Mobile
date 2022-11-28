import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sportly/domain/features/schedule/mappers/event_bidirectional_mapper.dart';
import 'package:sportly/domain/use_cases/get_events_use_case.dart';
import 'package:sportly/presentation/pages/schedule/schedule_page_state.f.dart';

@injectable
class SchedulePageCubit extends Cubit<SchedulePageState> {
  SchedulePageCubit(
    this._eventBidirectionalMapper,
    this._getEventsUseCase,
  ) : super(const SchedulePageState.loading());

  final EventBidirectionalMapper _eventBidirectionalMapper;
  final GetEventsUseCase _getEventsUseCase;

  void init(int teamId) async {
    final events = await _getEventsUseCase(teamId, 11);

    emit(
      SchedulePageState.idle(
        events: events
            .map((event) => _eventBidirectionalMapper.toDto(event))
            .toList(),
      ),
    );
  }
}
