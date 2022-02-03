import 'package:json_annotation/json_annotation.dart';
import 'package:mr_cat/models/cat/image_cat.dart';
import 'package:mr_cat/models/cat/weight_cat.dart';

part 'cat_model.g.dart';

@JsonSerializable()
class CatModel {
  final String id;
  final String name;
  final String temperament;
  final String life_span;
  final String? alt_names;
  final String? wikipedia_url;
  final String origin;
  final String? weight_imperial;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  final int? suppress_tail;
  final int short_legs;
  final int hypoallergenic;
  final int adaptability;
  final int affection_level;
  final String country_code;
  final int child_friendly;
  final int dog_friendly;
  final int energy_level;
  final int grooming;
  final int health_issues;
  final int intelligence;
  final int shedding_level;
  final int social_needs;
  final int stranger_friendly;
  final int vocalisation;
  final ImageCat? image;
  final WeightCat weight;

  CatModel({
    required this.image,
    required this.weight,
    required this.id,
    required this.name,
    required this.temperament,
    required this.life_span,
    required this.alt_names,
    required this.wikipedia_url,
    required this.origin,
    required this.weight_imperial,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppress_tail,
    required this.short_legs,
    required this.hypoallergenic,
    required this.adaptability,
    required this.affection_level,
    required this.country_code,
    required this.child_friendly,
    required this.dog_friendly,
    required this.energy_level,
    required this.grooming,
    required this.health_issues,
    required this.intelligence,
    required this.shedding_level,
    required this.social_needs,
    required this.stranger_friendly,
    required this.vocalisation,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => _$CatModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatModelToJson(this);
}
