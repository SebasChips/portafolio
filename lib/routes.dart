import 'package:flutter/material.dart';
import 'package:portafolio_project/mobile/landing_page_mobile.dart';
import 'package:portafolio_project/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constrains) {
            if (constrains.maxWidth > 800)
              return LandingPageWeb();
            else
              return LandingPageMobile();
          }),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constrains) {
            if (constrains.maxWidth > 800)
              return LandingPageWeb();
            else
              return LandingPageMobile();
          }),
        );
    }
  }
}
