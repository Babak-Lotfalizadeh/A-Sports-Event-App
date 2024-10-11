import 'package:flutter/material.dart';
import 'package:sports_event/data/repository/events_repository.dart';
import 'package:sports_event/data/services/events_service.dart';
import 'package:sports_event/data/view_model/event_date.dart';
import 'package:sports_event/data/view_model/event_view_model.dart';

class EventsProvider extends ChangeNotifier {
  final EventsService _eventsService = EventsService(EventsRepository());
  var _selectedFilter = EventDate.today;
  List<EventViewModel>? _data;

  EventDate get selectedFilter => _selectedFilter;

  List<EventViewModel>? get data => _data
      ?.where(
        (element) => element.dateStarting == _selectedFilter,
      )
      .toList();

  List<EventDate>? filters(){
    final result = _data?.map((e) => e.dateStarting ?? EventDate.today).toSet().toList();
    result?.sort((a, b) => a.index.compareTo(b.index));
    return result;
  }

  EventsProvider() {
    fetchData();
  }

  void fetchData() async {
    _data = await _eventsService.getData();
    notifyListeners();
  }

  void setFilter(EventDate? newFilter) {
    _selectedFilter = newFilter ?? EventDate.today;
    notifyListeners();
  }
}
