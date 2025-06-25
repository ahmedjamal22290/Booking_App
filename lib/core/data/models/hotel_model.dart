import 'package:booking_app/core/data/models/image_model.dart';

class HotelModel {
  final String name;
  final String? description;
  final String? link;
  final String? overallRating;
  final String price;
  final List<ImageModel> images;
  final List<String> amenities;
  String? city;
  bool isFav;
  static const String errorImageUrl =
      'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg';

  HotelModel({
    this.city,
    this.isFav = false,
    required this.name,
    required this.description,
    required this.link,
    required this.overallRating,
    required this.price,
    required this.images,
    required this.amenities,
  });
  factory HotelModel.fromJson(Map<String, dynamic> json) {
    final rawImages = json['images'] as List<dynamic>?;

    final parsedImages = (rawImages != null && rawImages.isNotEmpty)
        ? rawImages.map((img) => ImageModel.fromJson(img)).toList()
        : [ImageModel(thumbnail: errorImageUrl, originalImage: errorImageUrl)];
    return HotelModel(
      name: json['name'],
      city: json['name'],
      description: json['description'],
      link: json['link'],
      overallRating: (json["overall_rating"]).toString(),
      price: json["rate_per_night"]?["lowest"] ?? "--",
      images: parsedImages,
      amenities: List<String>.from(json['amenities'] ?? []),
    );
  }
  factory HotelModel.fromSupabase(Map<String, dynamic> json) {
    return HotelModel(
      name: json['name'],
      city: json['city'],
      isFav: true,
      description: json['description'],
      link: json['link'],
      overallRating: (json["overall_rating"]).toString(),
      price: json['price'] ?? "--",
      images: (json['images'] as List)
          .map((img) => ImageModel.fromJson(img))
          .toList(),
      amenities: List<String>.from(json['amenities'] ?? []),
    );
  }

  Map<String, dynamic> toJson(String userId) {
    return {
      'user_id': userId,
      'name': name,
      'city': city,
      'description': description,
      'link': link,
      'overall_rating': overallRating,
      'price': price,
      'images': images.map((img) => img.toJson()).toList(),
      'amenities': amenities,
      'created_at': DateTime.now().toIso8601String(),
    };
  }
}
