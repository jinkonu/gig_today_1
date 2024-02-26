import 'package:flutter/material.dart';

import '../assets.gen.dart';

class LogoImage extends StatelessWidget {
  final double size;

  const LogoImage({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: Assets.images.logo.provider(),
      width: size,
      height: size,
    );
  }
}
