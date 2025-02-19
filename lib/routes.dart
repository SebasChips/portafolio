import 'package:flutter/material.dart';
import 'package:portafolio_project/mobile/about_mobile.dart';
import 'package:portafolio_project/mobile/landing_page_mobile.dart';
import 'package:portafolio_project/web/about_web.dart';
import 'package:portafolio_project/web/landing_page_web.dart';
import 'package:portafolio_project/web/contact_web.dart';
import 'package:portafolio_project/mobile/contact_mobile.dart';

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
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constrains) {
            if (constrains.maxWidth > 800)
              return ContactWeb();
            else
              return ContactMobile();
          }),
        );
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constrains) {
            if (constrains.maxWidth > 800)
              return AboutWeb();
            else
              return AboutMobile();
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
