import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports_event/domain/events_provider.dart';
import 'package:sports_event/ui/common/tvg_tab_bar.dart';
import 'package:sports_event/ui/common/nested_navigation.dart';
import 'package:sports_event/util/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EventsProvider>(
      create: (BuildContext context) => EventsProvider(),
      builder: (context, child) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Image.asset(
            Assets.appLogo.address,
            width: Sizes.logoW.value,
            height: Sizes.logoH.value,
          ),
          centerTitle: true,
        ),
        body: const Column(
          children: [
            TVGTabBar(),
            Expanded(
              child: NestedNavigation(),
            ),
          ],
        ),
      ),
    );
  }
}
