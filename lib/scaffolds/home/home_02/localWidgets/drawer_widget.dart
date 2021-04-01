import 'package:flutter/material.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';

class DrawerLocal extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  final bool showDrawerHeader;

  const DrawerLocal({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    this.showDrawerHeader = false,
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _DrawerLocalState createState() => _DrawerLocalState();
}

class _DrawerLocalState extends State<DrawerLocal> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected(AdaptiveScaffoldDestination d) {
      return widget.destinations.indexOf(d) == widget.currentIndex;
    }

    void _destinationTapped(AdaptiveScaffoldDestination destination) {
      var idx = widget.destinations.indexOf(destination);
      if (idx != widget.currentIndex) {
        widget.onNavigationIndexChange(idx);
      }
    }

    return Drawer(
      child: ListView(
        children: [
          if (widget.showDrawerHeader)
            DrawerHeader(
              child: Center(
                child: widget.title,
              ),
            ),
          for (var d in widget.destinations)
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
              child: ListTileTheme(
                selectedColor: Theme.of(context).primaryColor,
                child: ListTile(
                    leading: Icon(d.icon),
                    title: Text(d.title),
                    contentPadding: EdgeInsets.symmetric(horizontal: 24),
                    trailing: _isSelected(d) ? Icon(Icons.done) : Text(''),
                    selected: _isSelected(d),
                    onTap: () => _destinationTapped(d)),
              ),
            ),
        ],
      ),
    );
  }
}
