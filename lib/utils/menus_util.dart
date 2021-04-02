import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdaptiveScaffoldDestination {
  final String menuTitle;
  final String pageTitle;
  final IconData icon;
  final String route;
  final Widget body;

  const AdaptiveScaffoldDestination({
    required this.menuTitle,
    required this.pageTitle,
    required this.icon,
    required this.route,
    required this.body,
  });
}

class MirayesMenusController extends GetxController {
  List<AdaptiveScaffoldDestination> get destinations => [];

  final _wasInit = false.obs;
  get wasInit => this._wasInit.value;
  set wasInit(value) => this._wasInit.value = value;

  final _pageIndex = 0.obs;
  get pageIndex => this._pageIndex.value;
  set pageIndex(value) => this._pageIndex.value = value;

  void controllerInit(BuildContext context) {
    if (!wasInit) {
      wasInit = true;
      String currentRouteName = ModalRoute.of(context)!.settings.name!;
      if (currentRouteName.isNotEmpty) {
        AdaptiveScaffoldDestination destinoAtual = destinations
            .firstWhere((element) => element.route == currentRouteName);

        int index = 0;
        destinations.forEach((element) {
          if (element.route == destinoAtual.route) {
            pageIndex = index;
          }
          index++;
        });
      }
    }
  }

  void onNavigationIndexChange(value) {
    pageIndex = value;
    goToMenu(pageIndex);
  }

  Widget getPageAtIndex(int index) {
    return destinations[index].body;
  }

  Widget getPageByRoute(String route) {
    AdaptiveScaffoldDestination destinofinal = destinations.first;
    destinations.forEach((destino) {
      if (destino.route == route) {
        destinofinal = destino;
      }
    });
    return destinofinal.body;
  }

  void goToMenu(int index) async {
    await Get.offAllNamed(destinations[index].route);
  }
}
