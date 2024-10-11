import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sports_event/util/exports.dart';

class NestedNavigation extends StatelessWidget {
  const NestedNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final nestedNavigation = GetIt.instance<NestedNavigator>();

    return Navigator(
      key: nestedNavigation.navigatorKey,
      onGenerateRoute: nestedNavigation.onGenerateRoute,
    );
  }
}
