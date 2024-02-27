import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/assets.gen.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';
import 'package:gig_today_1/presenter/widgets/gig_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GigProfile extends StatelessWidget {
  const GigProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Row(
        children: [
          VenueProfile(),
          ArtistProfile(),
        ],
      ),
    );
  }
}

class VenueProfile extends StatelessWidget {
  const VenueProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "@",
            style: context.typographies.heading,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: GigCard(
              image: Assets.images.venueExample.provider(),
              name: "club ff")),
        ],
      ),
    );
  }
}

class ArtistProfile extends StatelessWidget {
  ArtistProfile({super.key});

  final PageController pageController =
      PageController(viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ARTISTS",
                style: context.typographies.heading,
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const SlideEffect(
                  dotWidth: 12,
                  dotHeight: 12,
                  activeDotColor: Colors.grey,
                  dotColor: Colors.white,
                )
              ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 180,
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: [
                GigCard(
                    image: Assets.images.artistExample1.provider(),
                    name: "greenflameboys"),
                GigCard(
                    image: Assets.images.artistExample1.provider(),
                    name: "greenflameboys"),
                GigCard(
                    image: Assets.images.artistExample1.provider(),
                    name: "greenflameboys"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
