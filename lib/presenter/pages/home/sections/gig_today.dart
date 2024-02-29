import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/pages/home/widgets/gig_list.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';

class GigTodaySection extends StatelessWidget {
  const GigTodaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text("GIG TODAY",
            style: context.typographies.headingLarge,
          ),
        ),
        const SizedBox(
          height: 340,
          child: GigList(),
        ),
      ],
    );
  }
}
