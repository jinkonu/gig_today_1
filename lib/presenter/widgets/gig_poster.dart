import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/utils/url.dart';

import '../assets.gen.dart';
import '../navigation/navigation.dart';

class GigPoster extends StatelessWidget {
  final String id;
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
    required this.id,
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
            image: Image.network(getUrlFromGig(id)).image,
            width: width,
          ),
        ),
      ),
    );
  }
}
