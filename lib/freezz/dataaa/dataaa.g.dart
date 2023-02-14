// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataaa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dataaa _$$_DataaaFromJson(Map<String, dynamic> json) => _$_Dataaa(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataaaToJson(_$_Dataaa instance) => <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };
