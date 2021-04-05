import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdaptiveScaffoldDestination {
  final String menuTitle;
  final String pageTitle;
  final IconData icon;
  final String route;
  final Widget body;
  final Widget rightBar;

  const AdaptiveScaffoldDestination({
    required this.menuTitle,
    required this.pageTitle,
    required this.icon,
    required this.route,
    required this.body,
    required this.rightBar,
  });

  static AdaptiveScaffoldDestination toDTO() {
    return AdaptiveScaffoldDestination(
      menuTitle: '',
      pageTitle: '',
      icon: Icons.ac_unit,
      route: '',
      body: AdaptiveScaffoldDestination.emptyWidget(),
      rightBar: AdaptiveScaffoldDestination.emptyWidget(),
    );
  }

  static emptyWidget() {
    return Container();
  }
}

class MirayesMenusController extends GetxController {
  List<AdaptiveScaffoldDestination> get destinations => [];

  final _destinoAtual = AdaptiveScaffoldDestination.toDTO().obs;
  AdaptiveScaffoldDestination get destinoAtual => this._destinoAtual.value;
  set destinoAtual(value) => this._destinoAtual.value = value;

  final _wasInit = false.obs;
  get wasInit => this._wasInit.value;
  set wasInit(value) => this._wasInit.value = value;

  final _pageIndex = 0.obs;
  get pageIndex => this._pageIndex.value;
  set pageIndex(value) => this._pageIndex.value = value;

  void controllerInit(BuildContext context) {
    wasInit = true;
    String currentRouteName = ModalRoute.of(context)!.settings.name!;
    if (currentRouteName.isNotEmpty) {
      AdaptiveScaffoldDestination __destinoAtual = destinations
          .firstWhere((element) => element.route == currentRouteName);

      int index = 0;
      destinations.forEach((element) {
        if (element.route == __destinoAtual.route) {
          pageIndex = index;
          destinoAtual = getByIndex(pageIndex);
        }
        index++;
      });
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

  AdaptiveScaffoldDestination getByIndex(int pageIndex) {
    return destinations[pageIndex];
  }

  void goToMenu(int index) async {
    await Get.offAllNamed(destinations[index].route);
  }
}
