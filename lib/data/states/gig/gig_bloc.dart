import 'package:bloc/bloc.dart';
import 'package:gig_today_1/data/repository/gig_repository.dart';
import 'package:gig_today_1/data/states/gig/gig_event.dart';
import 'package:gig_today_1/data/states/gig/gig_state.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:injectable/injectable.dart';

@singleton
class GigBloc extends Bloc<GigEvent, GigState> {
  static const int gigsPerPage = 10;

  final GigRepository _gigRepository;

  GigBloc({
    required GigRepository gigRepository,
  })  : _gigRepository = gigRepository,
        super(const GigState()) {
    on<GigLoadStarted>(
      _onLoadStarted,
      transformer: (events, mapper) => events.switchMap(mapper),
    );
    on<GigLoadMoreStarted>(
      _onLoadMoreStarted,
      transformer: (events, mapper) => events.switchMap(mapper),
    );
  }

  void _onLoadStarted(GigLoadStarted event, Emitter<GigState> emit) async {
    try {
      emit(state.copyWith(
        status: GigStateStatus.loading,
      ));

      final gigs = event.loadAll
          ? await _gigRepository.getAllTodayGigs()
          : await _gigRepository.getTodayGigs(limit: gigsPerPage, page: 1);

      final canLoadMore = gigs.length >= gigsPerPage;

      emit(state.copyWith(
        status: GigStateStatus.success,
        gigs: gigs,
        page: 1,
        canLoadMore: canLoadMore,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(
        status: GigStateStatus.failure,
        error: e,
      ));
    }
  }

  void _onLoadMoreStarted(GigLoadMoreStarted event,
      Emitter<GigState> emit) async {
    try {
      if (!state.canLoadMore) return;

      emit(state.copyWith(
        status: GigStateStatus.loadingMore,
      ));

      final gigs = await _gigRepository.getTodayGigs(
        limit: gigsPerPage,
        page: state.page + 1,
      );

      final canLoadMore = gigs.length >= gigsPerPage;

      emit(state.copyWith(
        status: GigStateStatus.success,
        gigs: [...state.gigs, ... gigs],
        page: canLoadMore ? state.page + 1 : state.page,
        canLoadMore: canLoadMore,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(
        status: GigStateStatus.failure,
        error: e,
      ));
    }
  }
}
