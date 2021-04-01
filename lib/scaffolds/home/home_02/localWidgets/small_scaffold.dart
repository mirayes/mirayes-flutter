import 'package:flutter/material.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

import 'drawer_widget.dart';

class MirayesHomeScaffold02Small extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  const MirayesHomeScaffold02Small({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _MirayesHomeScaffold02SmallState createState() =>
      _MirayesHomeScaffold02SmallState();
}

class _MirayesHomeScaffold02SmallState
    extends State<MirayesHomeScaffold02Small> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screenPage,
      appBar: AppBar(
        title: widget.title,
        actions: widget.actions,
      ),
      drawer: DrawerLocal(
        screenPage: widget.screenPage,
        actions: widget.actions,
        currentIndex: widget.currentIndex,
        destinations: widget.destinations,
        onNavigationIndexChange: widget.onNavigationIndexChange,
        title: widget.title,
        showDrawerHeader: true,
      ),
    );
  }

  void _destinationTapped(AdaptiveScaffoldDestination destination) {
    var idx = widget.destinations.indexOf(destination);
    if (idx != widget.currentIndex) {
      widget.onNavigationIndexChange(idx);
    }
  }
}
