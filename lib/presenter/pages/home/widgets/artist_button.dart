import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/widgets/button.dart';

class ArtistButtons extends StatelessWidget {
  final List<String> names;

  const ArtistButtons({
    super.key,
    required this.names,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SmallTextButton(
          onPressed: () {},
          content: names[index],
          fontSize: 20,
        );},
      itemCount: names.length,
    );
  }
}

/*
for (var name in names)
SmallTextButton(
onPressed: () {},
content: name,
fontSize: 20,
),*/
