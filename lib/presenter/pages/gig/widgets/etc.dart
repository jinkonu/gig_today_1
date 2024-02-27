import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';

class GigEtc extends StatelessWidget {
  const GigEtc({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notice",
            style: context.typographies.heading,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "조심하세요.\n조심하십쇼.",
                style: context.typographies.body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
