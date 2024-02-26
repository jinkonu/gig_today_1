import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gig_today_1/presenter/navigation/navigation.dart';
import 'package:gig_today_1/presenter/pages/home/widgets/venue_button.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';
import 'package:gig_today_1/presenter/widgets/gig_poster.dart';

import '../../../assets.gen.dart';
import 'artist_button.dart';

class GigPost extends StatelessWidget {
  final int index;

  const GigPost({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GigPoster(
          index: index,
          circularRadius: 30.0,
        ),
        const Positioned(
          top: -5,
          child: VenueButton(name: "Club FF"),
        ),
        const Positioned(
          bottom: 70,
          child: ArtistButtons(
            names: ["GIG TODAY", "long time no shit", "검정치마"],
          ),
        ),
      ]);
  }
}
