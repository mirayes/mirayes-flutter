import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

import 'navBarItem_widget.dart';

class NavBar extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  const NavBar({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

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

    return Container(
      height: 350.0,
      child: Column(
        children: [
          for (var destination in widget.destinations)
            NavBarItem(
              icon: destination.icon,
              touched: () {
                _destinationTapped(destination);
              },
              active: _isSelected(destination),
            ),
        ],
      ),
    );
  }
}
