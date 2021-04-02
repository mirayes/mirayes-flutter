import 'package:flutter/material.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';

import 'companyName_widget.dart';
import 'navBarItem_widget.dart';
import 'navBar_widget.dart';

class NavigationBarWidget extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;
  final MirayesThemeController themeController;

  const NavigationBarWidget({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
    required this.themeController,
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
        color: widget.themeController.primaryColor,
        child: Stack(
          children: [
            CompanyNameWidget(),
            Align(
              alignment: Alignment.center,
              child: NavBar(
                screenPage: widget.screenPage,
                actions: widget.actions,
                currentIndex: widget.currentIndex,
                destinations: widget.destinations,
                onNavigationIndexChange: widget.onNavigationIndexChange,
                title: widget.title,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Icons.settings,
                touched: () {},
                active: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
