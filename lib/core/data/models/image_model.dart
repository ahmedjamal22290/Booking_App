class ImageModel {
  final String thumbnail, originalImage;

  ImageModel({required this.thumbnail, required this.originalImage});
  factory ImageModel.fromJson(Map<String, String> image) {
    return ImageModel(
        thumbnail: image['thumbnail']!,
        originalImage: image["original_image"]!);
  }
}
