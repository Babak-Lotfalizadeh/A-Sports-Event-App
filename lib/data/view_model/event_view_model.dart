import 'package:json_annotation/json_annotation.dart';
import 'package:sports_event/data/view_model/event_date.dart';

part 'event_view_model.g.dart';

@JsonSerializable()
class EventViewModel {
  final String? iconUrl;
  final String? league;
  final String? teams;
  final String? sportType;
  final EventDate? dateStarting;
  final String? timeStarting;
  final String? timeEnding;
  final String? description;

  EventViewModel({
    this.iconUrl,
    this.league,
    this.teams,
    this.sportType,
    this.dateStarting,
    this.timeStarting,
    this.timeEnding,
    this.description,
  });

  String getDateFormat() {
    return '${dateStarting?.code ?? ''} | ${timeStarting ?? ''} - ${timeEnding ?? ''}';
  }

  List<String> _getLeague() {
    if (league?.isNotEmpty == true) {
      return league?.split(' ') ?? [];
    }
    return [];
  }

  String getLeaguePrefix() {
    return _getLeague().firstOrNull ?? '';
  }

  String getLeagueSuffix() {
    return _getLeague().lastOrNull ?? '';
  }

  factory EventViewModel.fromJson(Map<String, dynamic> json) =>
      _$EventViewModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventViewModelToJson(this);
}
