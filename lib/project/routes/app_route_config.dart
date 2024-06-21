import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_navigation_project/pages/about_page.dart';
import 'package:gorouter_navigation_project/pages/contact_us_page.dart';
import 'package:gorouter_navigation_project/pages/home_page.dart';
import 'package:gorouter_navigation_project/pages/profile_page.dart';
import 'package:gorouter_navigation_project/pages/error_page.dart';
import 'package:gorouter_navigation_project/project/routes/app_route_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Home());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: '/profile',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Profile());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.aboutRouteName,
        path: '/about',
        pageBuilder: (context, state) {
          return const MaterialPage(child: About());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.contactUsRouteName,
        path: '/contactUs',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ContactUs());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: Error());
    },
  );
}
