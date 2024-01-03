import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/modules/auth/create_account/create_account_screen.dart';
import 'package:kitap_arkadasligi/src/modules/auth/login/login_screen.dart';
import 'package:kitap_arkadasligi/src/modules/auth/register_mail/register_mail_screen.dart';
import 'package:kitap_arkadasligi/src/modules/home/home_screen.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard/dashboard_screen.dart';
import 'package:kitap_arkadasligi/src/modules/profile/profile_screen.dart';
import 'package:kitap_arkadasligi/src/utils/route/guards/auth_guard.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  AppRouter({super.navigatorKey, required this.authGuard});

  final AuthGuard authGuard;
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: LoginRoute.page,
      initial: true,
    ),
    AutoRoute(page: CreateAccountRoute.page),
    AutoRoute(page: RegisterMailRoute.page),
    AutoRoute(page: DashboardRoute.page, children: [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: ProfileRoute.page),
    ]),
  ];
}

extension StackRouterExtension on StackRouter {
  Future setRoot(PageRouteInfo route) {
    return pushAndPopUntil(route, predicate: (route) => false);
  }
}

extension AppRouterExtension on AppRouter {
  Future setRoot(PageRouteInfo route) {
    return pushAndPopUntil(route, predicate: (route) => false);
  }
}
