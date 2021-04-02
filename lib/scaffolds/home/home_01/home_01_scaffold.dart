import 'package:flutter/material.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';

import 'localWidgets/mainContainer_widget.dart';
import 'localWidgets/navigationBar_widget.dart';
import 'localWidgets/rightSideContainer_widget.dart';

class MirayesHomeScaffold01 extends StatefulWidget {
  final Widget title;
  final Widget screenPage;
  final List<Widget> actions;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;

  const MirayesHomeScaffold01({
    Key? key,
    required this.screenPage,
    this.actions = const [],
    this.title = const Text(''),
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
  }) : super(key: key);

  @override
  _MirayesHomeScaffold01State createState() => _MirayesHomeScaffold01State();
}

class _MirayesHomeScaffold01State extends State<MirayesHomeScaffold01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              NavigationBarWidget(),
              MainContainer(),
              RightSideContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
