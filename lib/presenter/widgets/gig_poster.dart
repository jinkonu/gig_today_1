import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../assets.gen.dart';
import '../navigation/navigation.dart';

class GigPoster extends StatelessWidget {
  final int index;
  final double circularRadius;

  const GigPoster({
    super.key,
    required this.index,
    required this.circularRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(circularRadius),
      child: InkWell(
        onTap: () => context.router.push(const GigRoute()),
        child: Hero(
          tag: 'post$index',
          child: Image(
            image: Assets.images.postExample1.provider(),
            width: 200,
            height: 280,
          ),
        ),
      ),
    );
  }
}
