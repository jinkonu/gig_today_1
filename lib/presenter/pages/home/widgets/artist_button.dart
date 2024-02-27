import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/widgets/button.dart';

class ArtistButtons extends StatelessWidget {
  final double width;
  final List<String> names;

  const ArtistButtons({
    super.key,
    required this.names,
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
            content: names[index],
            fontSize: 20,
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
