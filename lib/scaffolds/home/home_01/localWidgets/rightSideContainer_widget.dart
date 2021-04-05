import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';
import 'package:mirayes_flutter/scaffolds/home/home_01/home_01_controller.dart';
import 'package:mirayes_flutter/utils/theme_util.dart';

class RightSideContainer extends StatefulWidget {
  final MirayesThemeController themeController;
  final MirayesMenusController menusController;

  const RightSideContainer({
    Key? key,
    required this.themeController,
    required this.menusController,
  }) : super(key: key);

  @override
  _RightSideContainerState createState() => _RightSideContainerState();
}

class _RightSideContainerState extends State<RightSideContainer> {
  Home01Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          color: widget.themeController.bodyBackground02Color,
        ),
        // color: widget.themeController.bodyBackground02Color,
        height: MediaQuery.of(context).size.height,
        width: controller.calcWidthRightSideContainer(context),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: widget.menusController.destinoAtual.rightBar,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: widget.themeController.bodyBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  onPressed: () {
                    controller.toggleRightSideOpened();
                  },
                  child: Icon(
                    Icons.arrow_right_rounded,
                    color: widget.themeController.bodyText01Color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
