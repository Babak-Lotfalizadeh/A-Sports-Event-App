import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:sports_event/domain/events_provider.dart';
import 'package:sports_event/ui/common/tab_button.dart';
import 'package:sports_event/util/exports.dart';

class TVGTabBar extends StatelessWidget {
  const TVGTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EventsProvider>(
      builder: (context, eventsProvider, child) {
        final filters = eventsProvider.filters();
        return SizedBox(
          width: double.infinity,
          height: Sizes.filterH.value,
          child: Center(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final filter = filters?[index];
                return TabButton(
                  title: filter?.code.toUpperCase() ?? '',
                  selected: eventsProvider.selectedFilter == filter,
                  onTap: () {
                    GetIt.instance<NestedNavigator>().popIfPossible();
                    eventsProvider.setFilter(filter);
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox.shrink(),
              itemCount: filters?.length ?? 0,
            ),
          ),
        );
      },
    );
  }
}
