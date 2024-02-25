import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../presenter/gen/assets.gen.dart';

class GigThumbnail extends StatelessWidget {
  const GigThumbnail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.pop(),
      child: Hero(
        tag: 'post0',
        child: Image(
          image: Assets.images.postExample1.provider(),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}