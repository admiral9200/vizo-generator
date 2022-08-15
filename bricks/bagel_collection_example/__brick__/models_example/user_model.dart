import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../core/bagel.dart';
import 'image_model.dart';

// ignore_for_file: curly_braces_in_flow_control_structures
class UserModel extends Equatable implements BagelModel {
  final String? id;
  final DateTime? createdDate;
  final DateTime? lastUpdatedDate;
  final String? phone;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? fcmToken;
  final bool blocked;
  final ImageModel profileImage;

  const UserModel({
    this.id = '',
    this.createdDate,
    this.lastUpdatedDate,
    this.phone = '',
    this.name = '',
    this.firstName,
    this.lastName,
    this.fcmToken,
    this.blocked = false,
    this.profileImage = const ImageModel(),
  });

  bool get hasProfileImage => profileImage.imageURL.isNotEmpty;

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};
    /// Note: [_id] and other metadata variables have underscores
    data['_id'] = id;
    data['_createdDate'] = createdDate?.toUtc().toIso8601String();
    data['_lastUpdatedDate'] = lastUpdatedDate?.toUtc().toIso8601String();
    data['phone'] = phone;
    data['name'] = name;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['fcmToken'] = fcmToken;
    data['blocked'] = blocked;
    data['profileImage'] = profileImage.toMap();

    return data;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      /// Note: [_id] and other metadata variables have underscores
      id: map['_id'],
      createdDate: DateTime.tryParse(map['_createdDate'] ?? ''),
      lastUpdatedDate: DateTime.tryParse(map['_lastUpdatedDate'] ?? ''),
      phone: map['phone'] ?? '',
      name: map['name'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      fcmToken: map['fcmToken'],
      blocked: map['blocked'],
      profileImage: ImageModel.fromMap(map['profileImage']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  List<Object?> get props => [
        id,
        blocked,
        phone,
        name,
        firstName,
        lastName,
        profileImage,
      ];

  @override
  String toString() {
    return 'UserModel{id: $id, createdDate: $createdDate, lastUpdatedDate: $lastUpdatedDate, '
        'phone: $phone, name: $name, firstName: $firstName, lastName: $lastName}';
  }

  @override
  Map<String, dynamic> toBagelModel() {
    return {
      ITEM: toMap(),
      ITEM_REF_ID: id,
      VALUE: name,
    };
  }

  UserModel copyWith({
    String? id,
    DateTime? createdDate,
    DateTime? lastUpdatedDate,
    String? phone,
    String? name,
    String? firstName,
    String? lastName,
    String? fcmToken,
    bool? blocked,
    ImageModel? profileImage,
  }) {
    return UserModel(
      id: id ?? this.id,
      createdDate: createdDate ?? this.createdDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      phone: phone ?? this.phone,
      name: name ?? this.name,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      fcmToken: fcmToken ?? this.fcmToken,
      blocked: blocked ?? this.blocked,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}
