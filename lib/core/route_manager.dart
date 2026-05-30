import 'package:flutter/material.dart';
import 'package:note/core/screen/un_known_route.dart';
import 'package:note/view/screens/note_page/screen/note_page.dart';

import '../view/screens/home_page/screen/home_page.dart';
import '../view/screens/splash_page/screen/splach_page.dart';

class RoutesManager {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget screen;
    String? name = settings.name;
    if (name == RouteName.splachPage.routeName) {
      screen = const SplachPage();
    } else if (name == RouteName.homePage.routeName) {
      screen = const HomePage();
    } else if (name == RouteName.notePage.routeName) {
      screen = const NotePage();
    } else {
      screen = UnknownRouteScreen(route: settings.name ?? "");
    }
    return MaterialPageRoute(builder: (context) => screen, settings: settings);
  }
}

enum RouteName {
  splachPage("/"),
  homePage("/homePage"),
  notePage("/tipsPage");


  final String routeName;

  const RouteName(this.routeName);
}

///////////////////
