import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/navigation/navigation.dart';

import '../gen/assets.gen.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () => context.router.push(const SplashRoute()),
          child: Image(
            image: Assets.images.postExample1.provider(),
          ),
        ),
      ),
    );
  }
}
