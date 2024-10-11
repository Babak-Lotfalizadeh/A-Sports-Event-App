import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports_event/domain/events_provider.dart';
import 'package:sports_event/ui/pages/events/widgets/event_card.dart';
import 'package:sports_event/util/exports.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Consumer<EventsProvider>(
        builder: (context, eventsProvider, child) => ListView.separated(
          padding: EdgeInsets.symmetric(vertical: Sizes.xLargePadding.value),
          itemCount: eventsProvider.data?.length ?? 0,
          separatorBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.xLargePadding.value,
            ),
            child: const Divider(height: 1),
          ),
          itemBuilder: (context, index) => EventCard(
            model: eventsProvider.data?[index],
          ),
        ),
      ),
    );
  }
}
