import 'package:flutter/material.dart';
import 'package:sports_event/util/sizes.dart';

class EventLeagueCard extends StatelessWidget {
  final String leaguePrefix;
  final String leagueSuffix;

  const EventLeagueCard({
    required this.leaguePrefix,
    required this.leagueSuffix,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.eventLeagueSize.value,
      width: Sizes.eventLeagueSize.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColorLight,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            leaguePrefix,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            leagueSuffix,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
