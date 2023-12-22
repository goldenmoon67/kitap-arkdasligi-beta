// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CreateAccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateAccountScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const LoginScreen()),
      );
    },
    RegisterMailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterMailScreen(),
      );
    },
    TempRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TempScreen(),
      );
    },
    TempRoute2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TempScreen2(),
      );
    },
  };
}

/// generated route for
/// [CreateAccountScreen]
class CreateAccountRoute extends PageRouteInfo<void> {
  const CreateAccountRoute({List<PageRouteInfo>? children})
      : super(
          CreateAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterMailScreen]
class RegisterMailRoute extends PageRouteInfo<void> {
  const RegisterMailRoute({List<PageRouteInfo>? children})
      : super(
          RegisterMailRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterMailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TempScreen]
class TempRoute extends PageRouteInfo<void> {
  const TempRoute({List<PageRouteInfo>? children})
      : super(
          TempRoute.name,
          initialChildren: children,
        );

  static const String name = 'TempRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TempScreen2]
class TempRoute2 extends PageRouteInfo<void> {
  const TempRoute2({List<PageRouteInfo>? children})
      : super(
          TempRoute2.name,
          initialChildren: children,
        );

  static const String name = 'TempRoute2';

  static const PageInfo<void> page = PageInfo<void>(name);
}
