import 'package:auto_route/auto_route.dart';

import '../../pages/home/home.dart';
import '../../pages/splash/splash.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: "/", page: SplashRoute.page),
    AutoRoute(path: "/home", page: HomeRoute.page)
  ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
    transitionsBuilder: TransitionsBuilders.fadeIn,
  );
}