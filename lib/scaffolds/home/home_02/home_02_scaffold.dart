import 'package:flutter/material.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

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
    return Scaffold(
      body: widget.screenPage,
      appBar: AppBar(
        title: widget.title,
        actions: widget.actions,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: widget.title,
              ),
            ),
            for (var d in widget.destinations)
              ListTile(
                leading: Icon(d.icon),
                title: Text(d.title),
                selected: widget.destinations.indexOf(d) == widget.currentIndex,
                onTap: () => _destinationTapped(d),
              ),
          ],
        ),
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
