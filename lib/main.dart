import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sports_event/sports_event_app.dart';
import 'package:sports_event/util/exports.dart';

void main() {
  GetIt.I.registerSingleton<NestedNavigator>(NestedNavigator());

  runApp(const SportsEventApp());
}