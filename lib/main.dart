import 'package:flutter/material.dart';
import 'package:gig_today_1/di.dart';
import 'package:gig_today_1/presenter/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(GlobalBlocProviders(child: GigTodayApp()));
}
