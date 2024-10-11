import 'package:flutter/material.dart';
import 'package:sports_event/ui/pages/events/widgets/event_image_backup.dart';
import 'package:sports_event/util/exports.dart';

class EventIcon extends StatelessWidget {
  final String? imageURL;

  const EventIcon({required this.imageURL, super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL = this.imageURL;
    if (imageURL != null) {
      return Image.network(
        imageURL,
        height: Sizes.eventIconSize.value,
        width: Sizes.eventIconSize.value,
        errorBuilder: (_, __, ___) => const EventImageBackup(),
      );
    } else {
      return const EventImageBackup();
    }
  }
}
