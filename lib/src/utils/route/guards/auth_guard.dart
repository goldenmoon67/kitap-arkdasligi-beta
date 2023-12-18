import 'package:auto_route/auto_route.dart';

import '../app_router.dart';

bool isAuthenticated = true;

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!isAuthenticated) {
      router.push(
        const LoginRoute(),
      );
    } else {
      resolver.next(true);
    }
  }
}
