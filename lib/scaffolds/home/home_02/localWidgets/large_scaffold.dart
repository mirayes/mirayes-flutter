import 'package:flutter/material.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

import 'drawer_widget.dart';

class MirayesHomeScaffold02Large extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  const MirayesHomeScaffold02Large({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _MirayesHomeScaffold02LargeState createState() =>
      _MirayesHomeScaffold02LargeState();
}

class _MirayesHomeScaffold02LargeState
    extends State<MirayesHomeScaffold02Large> {
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
            Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [widget.screenPage],
                ),
              ),
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
