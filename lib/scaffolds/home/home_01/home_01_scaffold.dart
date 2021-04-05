import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';
import 'package:mirayes_flutter/scaffolds/home/home_01/home_01_controller.dart';

import 'localWidgets/mainContainer_widget.dart';
import 'localWidgets/navigationBar_widget.dart';
import 'localWidgets/rightSideContainer_widget.dart';

class MirayesHomeScaffold01 extends StatefulWidget {
  final MirayesThemeController themeController;
  final MirayesMenusController menuController;

  const MirayesHomeScaffold01({
    Key? key,
    required this.themeController,
    required this.menuController,
  }) : super(key: key);

  @override
  _MirayesHomeScaffold01State createState() => _MirayesHomeScaffold01State();
}

class _MirayesHomeScaffold01State extends State<MirayesHomeScaffold01> {
  Home01Controller controller = Get.put(Home01Controller(), permanent: true);

  @override
  Widget build(BuildContext context) {
    controller.home01ControllerInit(context);
    widget.themeController.init(context);

    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                NavigationBarWidget(
                  themeController: widget.themeController,
                  menuController: widget.menuController,
                ),
                MainContainer(
                  themeController: widget.themeController,
                  menuController: widget.menuController,
                ),
                if (controller.rightSideOpened)
                  RightSideContainer(
                    themeController: widget.themeController,
                    menusController: widget.menuController,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
