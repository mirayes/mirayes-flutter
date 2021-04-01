import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdaptiveScaffoldDestination {
  final String title;
  final IconData icon;
  final String route;
  final Widget body;

  const AdaptiveScaffoldDestination({
    required this.title,
    required this.icon,
    required this.route,
    required this.body,
  });
}

class MirayesMenusController extends GetxController {
  List<AdaptiveScaffoldDestination> get destinations => [];

  final _pageIndex = 0.obs;
  get pageIndex => this._pageIndex.value;
  set pageIndex(value) => this._pageIndex.value = value;

  void onNavigationIndexChange(value) {
    pageIndex = value;
    goToMenu(pageIndex);
  }

  Widget getPageAtIndex(int index) {
    return destinations[index].body;
  }

  void goToMenu(int index) async {
    await Get.offAllNamed(destinations[index].route);
  }
}
