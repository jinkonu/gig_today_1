import 'package:freezed_annotation/freezed_annotation.dart';

part 'gig_event.freezed.dart';

@freezed
class GigEvent with _$GigEvent {
  const factory GigEvent.loadStarted({@Default(false) bool loadAll}) = GigLoadStarted;
  const factory GigEvent.loadMoreStarted() = GigLoadMoreStarted;
  const factory GigEvent.selectChanged({required String itemId}) = ItemSelectChanged;
}