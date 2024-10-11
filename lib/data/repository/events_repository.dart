import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sports_event/data/repository/events_repository_interface.dart';
import 'package:sports_event/data/view_model/event_view_model.dart';

class EventsRepository implements EventsRepositoryInterface {
  @override
  Future<List<EventViewModel>> get() async {
    String fileText = await rootBundle.loadString('assets/source/data.txt');
    final jsonFile = json.decode(fileText) as List<dynamic>;
    final result = List.generate(
      jsonFile.length,
      (index) => EventViewModel.fromJson(jsonFile[index]),
    );

    return result;
  }
}
