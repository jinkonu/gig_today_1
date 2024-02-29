// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'navigation.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GigRoute.name: (routeData) {
      final args = routeData.argsAs<GigRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GigPage(
          key: args.key,
          gig: args.gig,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    VenueRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VenuePage(),
      );
    },
  };
}

/// generated route for
/// [GigPage]
class GigRoute extends PageRouteInfo<GigRouteArgs> {
  GigRoute({
    Key? key,
    required Gig gig,
    List<PageRouteInfo>? children,
  }) : super(
          GigRoute.name,
          args: GigRouteArgs(
            key: key,
            gig: gig,
          ),
          initialChildren: children,
        );

  static const String name = 'GigRoute';

  static const PageInfo<GigRouteArgs> page = PageInfo<GigRouteArgs>(name);
}

class GigRouteArgs {
  const GigRouteArgs({
    this.key,
    required this.gig,
  });

  final Key? key;

  final Gig gig;

  @override
  String toString() {
    return 'GigRouteArgs{key: $key, gig: $gig}';
  }
}

/// generated route for
/// [HomePage]
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
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VenuePage]
class VenueRoute extends PageRouteInfo<void> {
  const VenueRoute({List<PageRouteInfo>? children})
      : super(
          VenueRoute.name,
          initialChildren: children,
        );

  static const String name = 'VenueRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
