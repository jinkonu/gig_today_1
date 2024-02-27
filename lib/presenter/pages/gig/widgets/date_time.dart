import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';

class GigDateTime extends StatelessWidget {
  const GigDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date",
            style: context.typographies.heading,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              "2024. 2. 26. MON",
              style: context.typographies.bodySmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Time",
              style: context.typographies.heading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              "6PM ~ 9PM",
              style: context.typographies.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
