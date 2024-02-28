import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gig_today_1/data/entity/gig.dart';

part 'gig_state.freezed.dart';

enum GigStateStatus {
  initial,
  loading,
  loadingMore,
  success,
  failure,
}

@freezed
class GigState with _$GigState {
  const factory GigState({
    @Default(GigStateStatus.initial) GigStateStatus status,
    @Default([]) List<Gig> gigs,
    @Default(0) int selectedGigIndex,
    @Default(1) int page,
    @Default(true) bool canLoadMore,
    Exception? error,
  }) = _GigState;

  const GigState._();

  Gig get selectedGig => gigs[selectedGigIndex];
}