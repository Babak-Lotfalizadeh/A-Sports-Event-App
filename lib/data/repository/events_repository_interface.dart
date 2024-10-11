import 'package:sports_event/data/view_model/event_view_model.dart';

abstract class EventsRepositoryInterface {
  Future<List<EventViewModel>> get();
}