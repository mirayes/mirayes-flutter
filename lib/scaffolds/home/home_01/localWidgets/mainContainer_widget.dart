import 'package:flutter/material.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

class MainContainer extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  const MainContainer({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.7 - 100,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: widget.screenPage,
            ),
          ],
        ),
      ),
    );
  }
}
