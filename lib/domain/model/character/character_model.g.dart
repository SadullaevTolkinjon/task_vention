// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterModelImpl _$$CharacterModelImplFromJson(Map<String, dynamic> json) =>
    _$CharacterModelImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharacterModelImplToJson(
        _$CharacterModelImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      count: json['count'] as int?,
      pages: json['pages'] as int?,
      next: json['next'] as String?,
      prev: json['prev'],
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: json['origin'] == null
          ? null
          : Location.fromJson(json['origin'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String?,
      episode:
          (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created?.toIso8601String(),
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
