import 'package:isolate_test/feature/isolate/domain/entities/product_entity.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part 'product_response_model.g.dart';

@JsonSerializable()
class ProductResponseModel {
  final int id;
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<String> images;

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

  List<ProductResponseModel> fromListJson(List<dynamic> json) {
    return json
        .map((product) => ProductResponseModel.fromJson(product))
        .toList();
  }

  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      description: description,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      brand: brand,
      category: category,
      thumbnail: thumbnail,
      images: images,
    );
  }
}
