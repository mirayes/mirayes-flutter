import 'package:flutter/material.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

import 'navBarItem_widget.dart';

class NavBar extends StatefulWidget {
  final MirayesMenusController menuController;

  const NavBar({
    Key? key,
    required this.menuController,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    int getIndex(AdaptiveScaffoldDestination d) {
      int retorno = 0;
      int indexLoop = 0;
      widget.menuController.destinations.forEach((destino) {
        if (destino.route == d.route) retorno = indexLoop;
        indexLoop++;
      });
      return retorno;
    }

    bool _isSelected(AdaptiveScaffoldDestination d) {
      int indexOfWidget = getIndex(d);
      int indexAtual = widget.menuController.pageIndex;
      bool saoIguais = indexOfWidget == indexAtual;
      return saoIguais;
    }

    void _destinationTapped(AdaptiveScaffoldDestination destination) {
      var idx = getIndex(destination);
      if (idx != widget.menuController.pageIndex) {
        widget.menuController.onNavigationIndexChange(idx);
      }
    }

    return Container(
      height: 350.0,
      child: Column(
        children: [
          for (var destination in widget.menuController.destinations)
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
