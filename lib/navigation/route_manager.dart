import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation/navigation_main.dart';
import 'package:flutter_application_1/navigation/not_found_page.dart';
import 'package:flutter_application_1/navigation/red_page.dart';
import 'package:flutter_application_1/navigation/yellow_page.dart';

import 'green_page.dart';
import 'grey_page.dart';

class RouteManager{
  static final Map<String,Function(RouteSettings settings)> _appRoutes={
    '/RedPage': (settings) =>RedPage(),
    '/GreenPage': (settings) => GreenPage(settings.arguments as int),
    '/YellowPage': (settings) => YellowPage(),
    '/GreyPage': (settings) => GreyPage(),
    '/':(settings) => HomePage()
  };

  static Route<dynamic>? generate(RouteSettings settings){
    if (_appRoutes.containsKey(settings.name)) {
      return buildRoute(_appRoutes[settings.name]!(settings), settings);
    } else {
      return defaultTargetPlatform == TargetPlatform.iOS
          ? CupertinoPageRoute(
              builder: (context) => NotFound())
          : MaterialPageRoute(
              builder: (context) => NotFound());
    }

  } 

  static Route<dynamic>? buildRoute(Widget widget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings, builder: (context) => widget);
    } else {
      return MaterialPageRoute(
          settings: settings, builder: (context) => widget);
    }
  }

}