import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:gig_today_1/data/states/settings/settings_selector.dart';

import 'navigation/navigation.dart';

class GigTodayApp extends StatelessWidget {
  final AppRouter _router = AppRouter();

  GigTodayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
      maximumSize: const Size(500, 1000),
      backgroundColor: Colors.black12,
      builder: (_) => SettingsThemeSelector(
        builder: (theme) => MaterialApp.router(
          theme: theme.themeData,
          routerConfig: _router.config(),
          scrollBehavior: AppScrollBehavior(),
        ),
      )
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
