import 'package:sports_event/data/repository/events_repository_interface.dart';
import 'package:sports_event/data/view_model/event_view_model.dart';

class EventsService {
  final EventsRepositoryInterface eventRepository;
  const EventsService(this.eventRepository);

  Future<List<EventViewModel>> getData() => eventRepository.get();
}