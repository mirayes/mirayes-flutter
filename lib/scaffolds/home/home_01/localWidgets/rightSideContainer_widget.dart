import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/scaffolds/home/home_01/home_01_controller.dart';
import 'package:mirayes_flutter/utils/theme_util.dart';

class RightSideContainer extends StatefulWidget {
  final MirayesThemeController themeController;

  const RightSideContainer({Key? key, required this.themeController})
      : super(key: key);

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
          // border: Border(
          //   left: BorderSide(
          //     color: widget.themeController.bodyText01Color.withOpacity(0.1),
          //   ),
          // ),
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
                  child: RightContent(),
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

class RightContent extends StatelessWidget {
  const RightContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
