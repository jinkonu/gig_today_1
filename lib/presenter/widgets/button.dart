import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/fonts.gen.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';

class SmallTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  final double fontSize;

  const SmallTextButton({
    super.key,
    required this.onPressed,
    required this.content,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: context.styles.buttonSmall,
      child: Text(content,
        style: context.typographies.bodySmall.copyWith(
          fontFamily: FontFamily.baemin2,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
