import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/navigation/navigation.dart';

class GigCard extends StatefulWidget {
  final ImageProvider image;
  final String name;

  const GigCard({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  State<GigCard> createState() => _GigCardState();
}

class _GigCardState extends State<GigCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          foregroundImage: widget.image,
          radius: 70,
          child: ElevatedButton(
            onPressed: () => context.router.push(const VenueRoute()),
            child: null,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          widget.name,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}
