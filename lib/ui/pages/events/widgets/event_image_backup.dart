import 'package:flutter/material.dart';
import 'package:sports_event/util/exports.dart';

class EventImageBackup extends StatelessWidget {
  const EventImageBackup({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.sportsIcon.address,
      width: Sizes.eventIconSize.value,
      height: Sizes.eventIconSize.value,
    );
  }
}
