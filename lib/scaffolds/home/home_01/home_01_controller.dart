import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';

class Home01Controller extends GetxController {
  final _wasInit = false.obs;
  get wasInit => this._wasInit.value;
  set wasInit(value) => this._wasInit.value = value;

  final _rightSideOpened = false.obs;
  get rightSideOpened => this._rightSideOpened.value;
  set rightSideOpened(value) => this._rightSideOpened.value = value;

  @override
  void onInit() {
    super.onInit();
  }

  void home01ControllerInit(
    BuildContext context,
    MirayesMenusController menuController,
  ) async {
    if (!menuController.hasSideBar) {
      await Future.delayed(Duration(milliseconds: 0));
      rightSideOpened = false;
    } else {
      await Future.delayed(Duration(milliseconds: 0));
      rightSideOpened = !Responsive.isMobile(context);
    }
  }

  void toggleRightSideOpened() {
    rightSideOpened = !rightSideOpened;
  }

  double calcWidthMainContainer(BuildContext context) {
    if (rightSideOpened && Responsive.isMobile(context)) return 0;
    double proporcaoResponsive = Responsive.isMobile(context) ? 1.0 : 0.7;
    double proporcao = rightSideOpened ? proporcaoResponsive : 1.0;
    return MediaQuery.of(context).size.width * proporcao - 100;
  }

  double calcWidthRightSideContainer(BuildContext context) {
    if (rightSideOpened && Responsive.isMobile(context))
      return MediaQuery.of(context).size.width - 100;
    return MediaQuery.of(context).size.width * 0.3;
  }
}
