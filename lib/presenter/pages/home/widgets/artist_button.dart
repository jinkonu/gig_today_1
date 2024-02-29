import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/widgets/button.dart';

class ArtistButtons extends StatelessWidget {
  final double width;
  final Map<String, String> artists;

  const ArtistButtons({
    super.key,
    required this.artists,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SmallTextButton(
            onPressed: () {},
            content: artists.values.elementAt(index),
            fontSize: 20,
          );
        },
        itemCount: artists.length,
      ),
    );
  }
}
