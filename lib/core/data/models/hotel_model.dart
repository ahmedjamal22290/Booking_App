import 'package:booking_app/core/data/models/image_model.dart';

class HotelModel {
  final String name;
  final String? description;
  final String? link;
  final double overallRating;
  final String price;
  final List<ImageModel> images;
  final List<String> amenities;

  HotelModel(
      {required this.name,
      required this.description,
      required this.link,
      required this.overallRating,
      required this.price,
      required this.images,
      required this.amenities});
  factory HotelModel.fromJson(Map<String, dynamic> json) {
    return HotelModel(
      name: json['name'],
      description: json['description'],
      link: json['link'],
      overallRating: json["overall_rating"],
      price: json["rate_per_night"]["lowest"],
      images: (json['images'] as List)
          .map((img) => ImageModel.fromJson(img))
          .toList(),
      amenities: List<String>.from(json['amenities']),
    );
  }
}
