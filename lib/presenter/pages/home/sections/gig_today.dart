import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';
import 'package:gig_today_1/presenter/pages/home/widgets/gig_post.dart';

class GigTodaySection extends StatefulWidget {
  const GigTodaySection({super.key});

  @override
  State<GigTodaySection> createState() => _GigTodaySectionState();
}

class _GigTodaySectionState extends State<GigTodaySection> {
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
        SizedBox(
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GigPost(index: index,),
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
