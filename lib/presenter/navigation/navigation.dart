import 'package:auto_route/auto_route.dart';

import '../../pages/gig/gig.dart';
import '../../pages/home/home.dart';
import '../../pages/splash/splash.dart';
import '../../pages/venue/venue.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: "/", page: SplashRoute.page),
    AutoRoute(path: "/home", page: HomeRoute.page),
    AutoRoute(path: "/venue/:id", page:VenueRoute.page),
    AutoRoute(path: "/gig/:id", page: GigRoute.page),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
    transitionsBuilder: TransitionsBuilders.fadeIn,
  );
}