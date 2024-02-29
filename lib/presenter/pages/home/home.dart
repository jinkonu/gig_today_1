import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/pages/home/sections/gig_today.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';
import 'package:gig_today_1/presenter/widgets/logo_image.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: context.colors.background,
            floating: true,
            title: const LogoImage(size: 50),
          )
        ],
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: GigTodaySection(),
        ),
      ),
    );
  }
}
