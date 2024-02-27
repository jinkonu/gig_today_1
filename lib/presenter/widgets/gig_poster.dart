import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../assets.gen.dart';
import '../navigation/navigation.dart';

class GigPoster extends StatelessWidget {
  final String tag;
  final double circularRadius;
  final double width;
  final VoidCallback onTap;

  const GigPoster({
    super.key,
    required this.tag,
    required this.circularRadius,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(circularRadius),
      child: InkWell(
        onTap: onTap,
        child: Hero(
          tag: tag,
          child: Image(
            image: Assets.images.postExample1.provider(),
            width: width,
          ),
        ),
      ),
    );
  }
}
