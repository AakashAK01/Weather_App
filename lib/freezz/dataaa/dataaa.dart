import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';
import 'location.dart';

part 'dataaa.freezed.dart';
part 'dataaa.g.dart';

@freezed
class Dataaa with _$Dataaa {
  factory Dataaa({
    Location? location,
    Current? current,
  }) = _Dataaa;

  factory Dataaa.fromJson(Map<String, dynamic> json) => _$DataaaFromJson(json);
}
