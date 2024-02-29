import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/widgets/loading.dart';

class GigRefreshControl extends StatelessWidget {
  final Future<void> Function() onRefresh;

  const GigRefreshControl({
    super.key,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
      onRefresh: onRefresh,
      builder: (_, __, ___, ____, _____) => const LoadingIndicator(),
    );
  }
}
