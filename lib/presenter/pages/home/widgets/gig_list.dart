import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gig_today_1/data/states/gig/gig_bloc.dart';
import 'package:gig_today_1/data/states/gig/gig_event.dart';
import 'package:gig_today_1/data/states/gig/gig_selector.dart';
import 'package:gig_today_1/data/states/gig/gig_state.dart';
import 'package:gig_today_1/presenter/pages/home/widgets/gig_post.dart';
import 'package:gig_today_1/presenter/widgets/gig_refresh_control.dart';
import 'package:gig_today_1/presenter/widgets/loading.dart';

class GigList extends StatefulWidget {
  const GigList({super.key});

  @override
  State<GigList> createState() => _GigListState();
}

class _GigListState extends State<GigList> {
  static const double _endReachedThreshold = 200;

  final GlobalKey<NestedScrollViewState> _scrollKey = GlobalKey();

  GigBloc get gigBloc => context.read<GigBloc>();

  @override
  void initState() {
    super.initState();

    scheduleMicrotask(() {
      gigBloc.add(const GigLoadStarted());
      _scrollKey.currentState?.innerController.addListener(_onScroll);
    });
  }

  @override
  void dispose() {
    _scrollKey.currentState?.innerController.dispose();
    _scrollKey.currentState?.dispose();

    super.dispose();
  }

  void _onScroll() {
    final innerController = _scrollKey.currentState?.innerController;

    if (innerController == null || !innerController.hasClients) return;

    final thresholdReached = innerController.position.extentAfter < _endReachedThreshold;

    if (thresholdReached) {
      // Load more!
      gigBloc.add(const GigLoadMoreStarted());
    }
  }

  Future _onRefresh() async {
    gigBloc.add(const GigLoadStarted());

    return gigBloc.stream.firstWhere((e) => e.status != GigStateStatus.loading);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      scrollDirection: Axis.horizontal,
      headerSliverBuilder: (_, __) => [],
      body: GigStateStatusSelector((status) {
        switch (status) {
          case GigStateStatus.initial:
          case GigStateStatus.loading:
            return const LoadingIndicator();

          case GigStateStatus.success:
          case GigStateStatus.loadingMore:
            return _buildList();

          case GigStateStatus.failure:
            return _buildError();
        }
      }),
    );
  }

  Widget _buildList() {
    return GigNumberOfGigsSelector((numberOfGigs) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GigSelector(index, (gig, _) {
              return GigPost(gig: gig);
            }),
          );
        },
      );
    });
  }

  Widget _buildError() {
    return CustomScrollView(
      slivers: [
        GigRefreshControl(onRefresh: _onRefresh),
        SliverFillRemaining(
          child: Container(
            padding: const EdgeInsets.only(bottom: 28),
            alignment: Alignment.center,
            child: const Icon(
              Icons.warning_amber_rounded,
              size: 60,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
