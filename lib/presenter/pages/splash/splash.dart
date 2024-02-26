import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/navigation/navigation.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';
import 'package:gig_today_1/presenter/widgets/loading.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Duration pageLoadingDuration = Duration(seconds: 1);

  @override
  void initState() {
    scheduleMicrotask(() async {
      await Future.delayed(pageLoadingDuration);
      if (!mounted) return;
      await context.router.replaceAll([const HomeRoute()]);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: const Center(
          child: LoadingIndicator()
      ),
    );
  }
}
