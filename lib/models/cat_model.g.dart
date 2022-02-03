// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatModel _$CatModelFromJson(Map<String, dynamic> json) => CatModel(
      image: json['image'] == null
          ? null
          : ImageCat.fromJson(json['image'] as Map<String, dynamic>),
      weight: WeightCat.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String,
      temperament: json['temperament'] as String,
      life_span: json['life_span'] as String,
      alt_names: json['alt_names'] as String?,
      wikipedia_url: json['wikipedia_url'] as String?,
      origin: json['origin'] as String,
      weight_imperial: json['weight_imperial'] as String?,
      experimental: json['experimental'] as int,
      hairless: json['hairless'] as int,
      natural: json['natural'] as int,
      rare: json['rare'] as int,
      rex: json['rex'] as int,
      suppress_tail: json['suppress_tail'] as int?,
      short_legs: json['short_legs'] as int,
      hypoallergenic: json['hypoallergenic'] as int,
      adaptability: json['adaptability'] as int,
      affection_level: json['affection_level'] as int,
      country_code: json['country_code'] as String,
      child_friendly: json['child_friendly'] as int,
      dog_friendly: json['dog_friendly'] as int,
      energy_level: json['energy_level'] as int,
      grooming: json['grooming'] as int,
      health_issues: json['health_issues'] as int,
      intelligence: json['intelligence'] as int,
      shedding_level: json['shedding_level'] as int,
      social_needs: json['social_needs'] as int,
      stranger_friendly: json['stranger_friendly'] as int,
      vocalisation: json['vocalisation'] as int,
    );

Map<String, dynamic> _$CatModelToJson(CatModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'temperament': instance.temperament,
      'life_span': instance.life_span,
      'alt_names': instance.alt_names,
      'wikipedia_url': instance.wikipedia_url,
      'origin': instance.origin,
      'weight_imperial': instance.weight_imperial,
      'experimental': instance.experimental,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppress_tail': instance.suppress_tail,
      'short_legs': instance.short_legs,
      'hypoallergenic': instance.hypoallergenic,
      'adaptability': instance.adaptability,
      'affection_level': instance.affection_level,
      'country_code': instance.country_code,
      'child_friendly': instance.child_friendly,
      'dog_friendly': instance.dog_friendly,
      'energy_level': instance.energy_level,
      'grooming': instance.grooming,
      'health_issues': instance.health_issues,
      'intelligence': instance.intelligence,
      'shedding_level': instance.shedding_level,
      'social_needs': instance.social_needs,
      'stranger_friendly': instance.stranger_friendly,
      'vocalisation': instance.vocalisation,
      'image': instance.image,
      'weight': instance.weight,
    };
