import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sports_event/data/view_model/event_view_model.dart';
import 'package:sports_event/ui/common/event_icon.dart';
import 'package:sports_event/ui/common/event_league_card.dart';
import 'package:sports_event/ui/pages/events/widgets/event_image_backup.dart';
import 'package:sports_event/util/exports.dart';

class EventCard extends StatelessWidget {
  final EventViewModel? model;

  const EventCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL = model?.iconUrl;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: Theme.of(context).primaryColorLight,
        splashColor: Theme.of(context).primaryColorLight,
        highlightColor: Colors.transparent,
        onTap: () {
          GetIt.instance<NestedNavigator>().goToDetails(model);
        },
        child: Padding(
          padding: EdgeInsets.all(Sizes.xxLargePadding.value),
          child: Row(
            children: [
              EventIcon(imageURL: model?.iconUrl),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.xxLargePadding.value,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model?.getDateFormat() ?? '',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        model?.teams ?? '',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              EventLeagueCard(
                leaguePrefix: model?.getLeaguePrefix() ?? '',
                leagueSuffix: model?.getLeagueSuffix() ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
