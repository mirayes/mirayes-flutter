import 'package:flutter/material.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

import 'localWidgets/small_scaffold.dart';
import 'localWidgets/large_scaffold.dart';

class MirayesHomeScaffold02 extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  const MirayesHomeScaffold02({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _MirayesHomeScaffold02State createState() => _MirayesHomeScaffold02State();
}

class _MirayesHomeScaffold02State extends State<MirayesHomeScaffold02> {
  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return MirayesHomeScaffold02Small(
        screenPage: widget.screenPage,
        actions: widget.actions,
        currentIndex: widget.currentIndex,
        destinations: widget.destinations,
        onNavigationIndexChange: widget.onNavigationIndexChange,
        title: widget.title,
      );
    }

    if (Responsive.isDesktop(context)) {
      return MirayesHomeScaffold02Large(
        screenPage: widget.screenPage,
        actions: widget.actions,
        currentIndex: widget.currentIndex,
        destinations: widget.destinations,
        onNavigationIndexChange: widget.onNavigationIndexChange,
        title: widget.title,
      );
    }

    return MirayesHomeScaffold02Small(
      screenPage: widget.screenPage,
      actions: widget.actions,
      currentIndex: widget.currentIndex,
      destinations: widget.destinations,
      onNavigationIndexChange: widget.onNavigationIndexChange,
      title: widget.title,
    );
  }
}
