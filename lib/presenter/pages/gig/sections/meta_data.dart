import 'package:flutter/material.dart';

import '../widgets/date_time.dart';
import '../widgets/etc.dart';
import '../widgets/profile.dart';
import '../widgets/ticket.dart';

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
