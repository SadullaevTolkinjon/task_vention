import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';

part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    Info? info,
    List<Character>? results,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, Object?> json) =>
      _$CharacterModelFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    int? count,
    int? pages,
    String? next,
    dynamic prev,
  }) = _Info;

  factory Info.fromJson(Map<String, Object?> json) => _$InfoFromJson(json);
}

@freezed
class Character with _$Character {
  const factory Character({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    Location? origin,
    Location? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) = _Character;

  factory Character.fromJson(Map<String, Object?> json) => _$CharacterFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    String? name,
    String? url,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
