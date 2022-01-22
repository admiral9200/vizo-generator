import 'package:equatable/equatable.dart';

import '../domain.dart';

class LanguageModel extends Equatable {
  const LanguageModel({
    this.id,
    this.createdDate,
    this.lastUpdatedDate,
    this.code,
    this.flag,
    this.isRTL,
    this.name,
  });

  final String? id;
  final String? createdDate;
  final String? lastUpdatedDate;
  final String? code;
  final FlagModel? flag;
  final bool? isRTL;
  final String? name;

  static LanguageModel fromJson(Map<String, dynamic> json) => LanguageModel(
        id: json['_id'],
        createdDate: json['_createdDate'],
        lastUpdatedDate: json['_lastUpdatedDate'],
        code: json['code'],
        flag: json['flag'] != null ? FlagModel.fromJson(json['flag']) : null,
        isRTL: json['isRTL'],
        name: json['name'],
      );

  @override
  List<Object?> get props => [
        id,
      ];
}
