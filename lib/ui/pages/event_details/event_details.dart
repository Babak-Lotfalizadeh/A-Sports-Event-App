import 'package:flutter/material.dart';
import 'package:sports_event/data/view_model/event_view_model.dart';
import 'package:sports_event/ui/common/event_icon.dart';
import 'package:sports_event/ui/common/event_league_card.dart';
import 'package:sports_event/util/exports.dart';

class EventDetailsPage extends StatelessWidget {
  final EventViewModel model;

  const EventDetailsPage({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(AppLocalizations.of(context)?.goBack ?? ''),
        titleTextStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.black87,
            ),
      ),
      body: Padding(
        padding: EdgeInsets.all(Sizes.eventDetailsPadding.value),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Sizes.eventDetailTeamNameTopPadding.value),
            EventLeagueCard(
              leaguePrefix: model.getLeaguePrefix(),
              leagueSuffix: model.getLeagueSuffix(),
            ),
            SizedBox(height: Sizes.eventDetailsPadding.value),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.getDateFormat(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  model.teams ?? '',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            SizedBox(height: Sizes.eventDetailTeamNameBottomPadding.value),
            const Divider(thickness: 1),
            SizedBox(height: Sizes.eventDetailIconTopPadding.value),
            EventIcon(imageURL: model.iconUrl),
            SizedBox(height: Sizes.xxLargePadding.value),
            Text(
              model.description ?? '',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
