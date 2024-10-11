// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventViewModel _$EventViewModelFromJson(Map<String, dynamic> json) =>
    EventViewModel(
      iconUrl: json['iconUrl'] as String?,
      league: json['league'] as String?,
      teams: json['teams'] as String?,
      sportType: json['sportType'] as String?,
      dateStarting:
          $enumDecodeNullable(_$EventDateEnumMap, json['dateStarting']),
      timeStarting: json['timeStarting'] as String?,
      timeEnding: json['timeEnding'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$EventViewModelToJson(EventViewModel instance) =>
    <String, dynamic>{
      'iconUrl': instance.iconUrl,
      'league': instance.league,
      'teams': instance.teams,
      'sportType': instance.sportType,
      'dateStarting': _$EventDateEnumMap[instance.dateStarting],
      'timeStarting': instance.timeStarting,
      'timeEnding': instance.timeEnding,
      'description': instance.description,
    };

const _$EventDateEnumMap = {
  EventDate.yesterday: 'Yesterday',
  EventDate.today: 'Today',
  EventDate.tomorrow: 'Tomorrow',
};
