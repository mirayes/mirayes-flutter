import 'package:flutter/material.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';

import 'companyName_widget.dart';
import 'navBarItem_widget.dart';
import 'navBar_widget.dart';

class NavigationBarWidget extends StatefulWidget {
  final MirayesThemeController themeController;
  final MirayesMenusController menuController;

  const NavigationBarWidget({
    Key? key,
    required this.themeController,
    required this.menuController,
  }) : super(key: key);

  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: widget.themeController.menuBackgroundColor,
        child: Stack(
          children: [
            CompanyNameWidget(),
            Align(
              alignment: Alignment.center,
              child: NavBar(
                menuController: widget.menuController,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Icons.settings,
                touched: () {
                  widget.themeController.toggleBrightness();
                },
                active: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
