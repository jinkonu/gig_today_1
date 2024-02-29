import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gig.freezed.dart';
part 'gig.g.dart';

@JsonSerializable()
@freezed
class Gig with _$Gig {
  const factory Gig({
    required String id,
    required String name,
    required String startTime,
    required String endTime,
    required int ticketPrice,
    required String notice,
    required String venueId,
    required Map<String, String> artists,
  }) = _Gig;

  factory Gig.fromJson(Map<String, Object?> json) => _$GigFromJson(json);
  @override Map<String, Object?> toJson() => _$GigToJson(this);
}