import 'package:json_annotation/json_annotation.dart';

part 'product_response_model.g.dart';

@JsonSerializable()
class ProductResponseModel {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  ProductResponseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  /// Connect the generated [_$ProductResponseModelFromJson] function to the `fromJson`
  /// factory.
  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);

  /// Connect the generated [_$ProductResponseModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProductResponseModelToJson(this);
}
