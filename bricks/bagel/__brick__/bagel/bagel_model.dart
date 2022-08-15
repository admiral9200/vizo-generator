import 'package:equatable/equatable.dart';

abstract class BagelModel {
  Map<String, dynamic> toBagelModel();
}

abstract class BagelItemReferenceModel extends Equatable {
  const BagelItemReferenceModel();
  String get itemRefID;
  String get value;
}

//ignore_for_file: constant_identifier_names
const ITEM = 'item';
const ITEM_REF_ID = 'itemRefID';
const VALUE = 'value';
