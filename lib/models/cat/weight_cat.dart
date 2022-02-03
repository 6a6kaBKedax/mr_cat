import 'package:json_annotation/json_annotation.dart';

part 'weight_cat.g.dart';

@JsonSerializable()
class WeightCat {
  final String imperial;
  final String metric;

  WeightCat({
    required this.imperial,
    required this.metric,
  });

  factory WeightCat.fromJson(Map<String, dynamic> json) => _$WeightCatFromJson(json);

  Map<String, dynamic> toJson() => _$WeightCatToJson(this);
}
