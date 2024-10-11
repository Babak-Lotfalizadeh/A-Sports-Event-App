import 'package:flutter/material.dart';
import 'package:sports_event/data/view_model/event_view_model.dart';
import 'package:sports_event/ui/pages/event_details/event_details.dart';
import 'package:sports_event/ui/pages/events/events_page.dart';

class NestedNavigator {
  static const _eventDetails = 'eventDetails';
  final navigatorKey = GlobalKey<NavigatorState>();

  void goToDetails(EventViewModel? model) {
    if (model == null) return;
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => EventDetailsPage(
          model: model,
        ),
      ),
    );
  }

  void popIfPossible() {
    if(navigatorKey.currentState?.canPop() == true) {
      navigatorKey.currentState?.pop();
    }
  }

  Route<Widget> onGenerateRoute(RouteSettings settings) {
    final page = switch (settings.name) {
      '/' => const EventsPage(),
      _eventDetails => EventDetailsPage(model: EventViewModel()),
      _ => throw StateError('Unexpected route name: ${settings.name}!')
    };

    return MaterialPageRoute(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
