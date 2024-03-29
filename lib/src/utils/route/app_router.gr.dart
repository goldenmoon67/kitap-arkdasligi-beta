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
    AdvsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AdvsDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AdvsDetailScreen(
          key: args.key,
          advsId: args.advsId,
        ),
      );
    },
    BookDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookDetailScreen(
          key: args.key,
          bookId: args.bookId,
        ),
      );
    },
    CommentRoute.name: (routeData) {
      final args = routeData.argsAs<CommentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CommentScreen(
          key: args.key,
          commentType: args.commentType,
          objectId: args.objectId,
          sendButton: args.sendButton,
        ),
      );
    },
    CreateAccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateAccountScreen(),
      );
    },
    CreateAdvsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateAdvsScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const LoginScreen()),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(
          key: args.key,
          isDirect: args.isDirect,
        ),
      );
    },
    RegisterMailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterMailScreen(),
      );
    },
  };
}

/// generated route for
/// [AdvsDetailScreen]
class AdvsDetailRoute extends PageRouteInfo<AdvsDetailRouteArgs> {
  AdvsDetailRoute({
    Key? key,
    required String advsId,
    List<PageRouteInfo>? children,
  }) : super(
          AdvsDetailRoute.name,
          args: AdvsDetailRouteArgs(
            key: key,
            advsId: advsId,
          ),
          initialChildren: children,
        );

  static const String name = 'AdvsDetailRoute';

  static const PageInfo<AdvsDetailRouteArgs> page =
      PageInfo<AdvsDetailRouteArgs>(name);
}

class AdvsDetailRouteArgs {
  const AdvsDetailRouteArgs({
    this.key,
    required this.advsId,
  });

  final Key? key;

  final String advsId;

  @override
  String toString() {
    return 'AdvsDetailRouteArgs{key: $key, advsId: $advsId}';
  }
}

/// generated route for
/// [BookDetailScreen]
class BookDetailRoute extends PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    Key? key,
    required String bookId,
    List<PageRouteInfo>? children,
  }) : super(
          BookDetailRoute.name,
          args: BookDetailRouteArgs(
            key: key,
            bookId: bookId,
          ),
          initialChildren: children,
        );

  static const String name = 'BookDetailRoute';

  static const PageInfo<BookDetailRouteArgs> page =
      PageInfo<BookDetailRouteArgs>(name);
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({
    this.key,
    required this.bookId,
  });

  final Key? key;

  final String bookId;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [CommentScreen]
class CommentRoute extends PageRouteInfo<CommentRouteArgs> {
  CommentRoute({
    Key? key,
    required CommentType commentType,
    required String objectId,
    required void Function(String) sendButton,
    List<PageRouteInfo>? children,
  }) : super(
          CommentRoute.name,
          args: CommentRouteArgs(
            key: key,
            commentType: commentType,
            objectId: objectId,
            sendButton: sendButton,
          ),
          initialChildren: children,
        );

  static const String name = 'CommentRoute';

  static const PageInfo<CommentRouteArgs> page =
      PageInfo<CommentRouteArgs>(name);
}

class CommentRouteArgs {
  const CommentRouteArgs({
    this.key,
    required this.commentType,
    required this.objectId,
    required this.sendButton,
  });

  final Key? key;

  final CommentType commentType;

  final String objectId;

  final void Function(String) sendButton;

  @override
  String toString() {
    return 'CommentRouteArgs{key: $key, commentType: $commentType, objectId: $objectId, sendButton: $sendButton}';
  }
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
/// [CreateAdvsScreen]
class CreateAdvsRoute extends PageRouteInfo<void> {
  const CreateAdvsRoute({List<PageRouteInfo>? children})
      : super(
          CreateAdvsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAdvsRoute';

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
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

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
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    bool isDirect = false,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            isDirect: isDirect,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.isDirect = false,
  });

  final Key? key;

  final bool isDirect;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, isDirect: $isDirect}';
  }
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
