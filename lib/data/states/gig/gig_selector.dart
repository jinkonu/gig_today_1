import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gig_today_1/data/entity/gig.dart';
import 'package:gig_today_1/data/states/gig/gig_bloc.dart';
import 'package:gig_today_1/data/states/gig/gig_state.dart';

class GigStateSelector<T> extends BlocSelector<GigBloc, GigState, T> {
  GigStateSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(
          builder: (_, value) => builder(value),
        );
}

class GigStateStatusSelector extends GigStateSelector<GigStateStatus> {
  GigStateStatusSelector(Widget Function(GigStateStatus) builder, {super.key})
      : super(
          selector: (state) => state.status,
          builder: builder,
        );
}

class GigCanLoadMoreSelector extends GigStateSelector<bool> {
  GigCanLoadMoreSelector(Widget Function(bool) builder, {super.key})
      : super(
          selector: (state) => state.canLoadMore,
          builder: builder,
        );
}

class GigNumberOfGigsSelector extends GigStateSelector<int> {
  GigNumberOfGigsSelector(Widget Function(int) builder, {super.key})
      : super(
          selector: (state) => state.gigs.length,
          builder: builder,
        );
}

class CurrentGigSelector extends GigStateSelector<Gig> {
  CurrentGigSelector(Widget Function(Gig) builder, {super.key})
      : super(
          selector: (state) => state.selectedGig,
          builder: builder,
        );
}

class GigSelector extends GigStateSelector<GigSelectorState> {
  GigSelector(int index, Widget Function(Gig, bool) builder, {super.key})
    : super(
    selector: (state) => GigSelectorState(
      state.gigs[index],
      state.selectedGigIndex == index,
    ),
    builder: (value) => builder(value.gig, value.selected),
  );
}

class GigSelectorState {
  final Gig gig;
  final bool selected;

  GigSelectorState(
    this.gig,
    this.selected,
  );

  @override
  bool operator == (Object other) =>
      other is GigSelectorState && gig == other.gig && selected == other.selected;

  @override
  int get hashCode => gig.hashCode ^ selected.hashCode;
}
