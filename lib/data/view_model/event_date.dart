import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'code')
enum EventDate {
  yesterday('Yesterday'),
  today('Today'),
  tomorrow('Tomorrow');

  const EventDate(this.code);
  final String code;
}