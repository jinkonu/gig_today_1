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
    required DateTime startTime,
    required DateTime endTime,
    required int ticketPrice,
    required String notice,
  }) = _Gig;

  factory Gig.fromJson(Map<String, Object?> json) => _$GigFromJson(json);
  Map<String, Object?> toJson() => _$GigToJson(this);
}