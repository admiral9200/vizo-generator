import 'package:equatable/equatable.dart';

class ImageModel extends Equatable {
  const ImageModel({
    this.imageName = '',
    this.altText = '',
    this.imageURL = '',
    this.extension = '',
  });

  final String imageName;
  final String altText;
  final String imageURL;
  final String extension;

  static ImageModel fromMap(Map<String, dynamic> json) => ImageModel(
        imageName: json['imageName'] ?? '',
        altText: json['altText'] ?? '',
        imageURL: json['imageURL'] ?? '',
        extension: json['extension'] ?? '',
      );

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};
    data['imageName'] = imageName;
    data['altText'] = altText;
    data['imageURL'] = imageURL;
    data['extension'] = extension;
    return data;
  }

  @override
  List<Object?> get props => [
        imageName,
      ];
}
