// class GigPost extends StatelessWidget {
//   final int index;
//
//   const GigPost({
//     super.key,
//     required this.index,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//         children: [
//           GigPoster(
//             onTap: () => context.router.push(const GigRoute()),
//             tag: '$index',
//             circularRadius: 30.0,
//             width: 200,
//           ),
//           const Positioned(
//             top: -5,
//             child: VenueButton(name: "Club FF"),
//           ),
//           const Positioned(
//             bottom: 10,
//             child: ArtistButtons(
//               width: 200,
//               names: ["GIG TODAY", "long time no shit", "검정치마"],
//             ),
//           ),
//         ]);
//   }
// }

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/data/entity/gig.dart';
import 'package:gig_today_1/presenter/navigation/navigation.dart';
import 'package:gig_today_1/presenter/pages/home/widgets/artist_button.dart';
import 'package:gig_today_1/presenter/pages/home/widgets/venue_button.dart';
import 'package:gig_today_1/presenter/widgets/gig_poster.dart';

class GigPost extends StatelessWidget {
  final Gig gig;

  const GigPost({
    super.key,
    required this.gig,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          GigPoster(
            id: gig.id,
            onTap: () => context.router.push(GigRoute(gig: gig)),
            tag: gig.id,
            circularRadius: 30.0,
            width: 200,
          ),
          Positioned(
            top: -5,
            child: VenueButton(
              id: gig.venueId,
              name: "Club FF",),
          ),
          Positioned(
            bottom: 10,
            child: ArtistButtons(
              width: 200,
              artists: gig.artists,
            ),
          ),
        ]
    );
  }
}
