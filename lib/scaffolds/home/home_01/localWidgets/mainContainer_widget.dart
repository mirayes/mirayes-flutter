import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';
import 'package:mirayes_flutter/scaffolds/home/home_01/home_01_controller.dart';
import 'package:mirayes_flutter/utils/menus_util.dart';

class MainContainer extends StatefulWidget {
  final MirayesThemeController themeController;
  final MirayesMenusController menuController;

  const MainContainer({
    Key? key,
    required this.themeController,
    required this.menuController,
  }) : super(key: key);

  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  Home01Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: controller.calcWidthMainContainer(context),
        color: widget.themeController.bodyBackgroundColor,
        child: Stack(
          children: [
            if (!controller.rightSideOpened)
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: widget.themeController.menuBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.toggleRightSideOpened();
                    },
                    icon: Icon(
                      Icons.arrow_left_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: widget.menuController.destinoAtual.body,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
