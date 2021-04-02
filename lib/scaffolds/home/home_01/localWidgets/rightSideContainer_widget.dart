import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/scaffolds/home/home_01/home_01_controller.dart';

class RightSideContainer extends StatefulWidget {
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
        color: Color(0xffF7F7FF),
        height: MediaQuery.of(context).size.height,
        width: controller.calcWidthRightSideContainer(context),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text(''),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    controller.toggleRightSideOpened();
                  },
                  icon: Icon(
                    Icons.arrow_right_rounded,
                    color: Colors.grey,
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
