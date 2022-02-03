import 'package:json_annotation/json_annotation.dart';

part 'image_cat.g.dart';

@JsonSerializable()
class ImageCat {
  final String? image;
  final String? id;
  final String? url;
  final int? width;

  ImageCat({
    required this.image,
    required this.id,
    required this.url,
    required this.width,
  });

  factory ImageCat.fromJson(Map<String, dynamic> json) => _$ImageCatFromJson(json);

  Map<String, dynamic> toJson() => _$ImageCatToJson(this);
}
