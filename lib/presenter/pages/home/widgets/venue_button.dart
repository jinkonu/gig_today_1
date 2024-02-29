import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/widgets/button.dart';

class VenueButton extends StatelessWidget {
  final String id;
  final String name;

  const VenueButton({
    super.key,
    required this.id,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SmallTextButton(
      onPressed: () {},
      content: "@ $name",
      fontSize: 18,
    );
  }
}
