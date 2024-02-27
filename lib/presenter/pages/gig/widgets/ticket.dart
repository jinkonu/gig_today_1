import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';

class GigTicket extends StatelessWidget {
  const GigTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ticket",
          style: context.typographies.heading,
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(
            "30,000 ₩",
            style: context.typographies.bodySmall,
          ),
        ),
      ],
    );
  }
}
