import 'package:flutter/material.dart';
import 'package:gig_today_1/pages/gig/widgets/date_time.dart';
import 'package:gig_today_1/pages/gig/widgets/etc.dart';
import 'package:gig_today_1/pages/gig/widgets/ticket.dart';

import '../widgets/profile.dart';

class GigMetaData extends StatelessWidget {
  const GigMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GigProfile(),
          GigDateTime(),
          GigTicket(),
          GigEtc(),
        ],
      ),
    );
  }
}
