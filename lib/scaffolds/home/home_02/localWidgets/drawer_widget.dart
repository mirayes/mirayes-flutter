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

    Color textColor() {
      bool isDark = Theme.of(context).brightness == Brightness.dark;
      return isDark ? HexColor.fromHex('#818fa9') : HexColor.fromHex('#000000');
    }

    Color borderBottomColor() {
      bool isDark = Theme.of(context).brightness == Brightness.dark;
      return isDark ? HexColor.fromHex('#262c38') : HexColor.fromHex('#cccccc');
    }

    Color selectedIconColor() {
      bool isDark = Theme.of(context).brightness == Brightness.dark;
      return isDark ? Colors.white : HexColor.fromHex('#000000');
    }

    bool isRail() {
      if (Responsive.isTablet(context)) {
        return true;
      }
      return false;
    }

    return Container(
      constraints: isRail()
          ? BoxConstraints(
              maxWidth: 50,
            )
          : BoxConstraints(),
      child: Drawer(
        child: ListView(
          children: [
            if (widget.showDrawerHeader)
              DrawerHeader(
                margin: EdgeInsets.zero,
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
                      color: borderBottomColor(),
                    ),
                    left: _isSelected(d)
                        ? BorderSide(
                            width: 4.0,
                            color: Theme.of(context).primaryColor,
                          )
                        : BorderSide(
                            width: 4.0,
                            color: Colors.transparent,
                          ),
                  ),
                ),
                child: ListTileTheme(
                  selectedColor: textColor(),
                  textColor: textColor(),
                  iconColor: textColor(),
                  child: ListTile(
                      leading: Icon(
                        d.icon,
                        color:
                            _isSelected(d) ? selectedIconColor() : textColor(),
                      ),
                      title: isRail() ? Text('') : Text(d.menuTitle),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      selected: _isSelected(d),
                      selectedTileColor: borderBottomColor(),
                      onTap: () => _destinationTapped(d)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
