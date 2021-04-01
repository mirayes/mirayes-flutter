import 'package:flutter/material.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';
import 'package:mirayes_flutter/widgets/typographies/title.dart';

class BodyWidget extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  final bool showDrawerHeader;

  const BodyWidget({
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
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MirayesTypographTitle(
                  title: widget.destinations[widget.currentIndex].pageTitle,
                ),
                widget.screenPage,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
