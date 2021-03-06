import 'package:flutter/material.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

import 'body_widget.dart';
import 'drawer_widget.dart';

class MirayesHomeScaffold02Medium extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  const MirayesHomeScaffold02Medium({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _MirayesHomeScaffold02MediumState createState() =>
      _MirayesHomeScaffold02MediumState();
}

class _MirayesHomeScaffold02MediumState
    extends State<MirayesHomeScaffold02Medium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerLocal(
              screenPage: widget.screenPage,
              actions: widget.actions,
              currentIndex: widget.currentIndex,
              destinations: widget.destinations,
              onNavigationIndexChange: widget.onNavigationIndexChange,
              title: widget.title,
            ),
            BodyWidget(
              screenPage: widget.screenPage,
              actions: widget.actions,
              currentIndex: widget.currentIndex,
              destinations: widget.destinations,
              onNavigationIndexChange: widget.onNavigationIndexChange,
              title: widget.title,
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: widget.title,
        actions: widget.actions,
      ),
    );
  }
}
