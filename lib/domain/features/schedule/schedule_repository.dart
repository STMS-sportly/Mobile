import 'package:sportly/domain/features/schedule/models/create_event.f.dart';
import 'package:sportly/domain/features/schedule/models/update_event.f.dart';
import 'package:sportly/domain/features/schedule/models/event.f.dart';

abstract class ScheduleRepository {
  Future<List<Event>> getMonthEvents(int teamId, DateTime date);

  Future<List<Event>> getDayEvents(int teamId, DateTime date);

  Future<void> createEvent(int teamId, CreateEvent createEvent);

  Future<void> updateEvent(int teamId, UpdateEvent editEvent);

  Future<void> deleteEvent(int teamId, int eventId);
}
