import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  const UserModel({
    this.id,
    this.name,
  });

  final String? id;
  final String? name;

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        id: json['_id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {};

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
