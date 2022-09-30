import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase.dart';

// ignore_for_file: curly_braces_in_flow_control_structures
class _ExampleFirebaseModel {
  final String? id;
  final String? photoUrl;
  final DateTime? date;

  _ExampleFirebaseModel({
    required this.id,
    required this.photoUrl,
    required this.date,
  });

  /// [fromMap] should be generic and work with any type of map, not just Documents from Firebase
  factory _ExampleFirebaseModel.fromMap(Map<String, dynamic> map) {
    return _ExampleFirebaseModel(
      id: map['id'],
      photoUrl: map['photoUrl'] ?? '',
      date: map['date'],
    );
  }

  /// We use [fromFirestore] asynchronous when there's images url we need to parse from [FirebaseStorage]
  /// So Model has full storage Url!
  ///
  /// Note: remember to use Future.wait([]) when repository fetches the list of documents (optimization)
  static Future<_ExampleFirebaseModel> fromFireStore(
      DocumentSnapshot doc) async {
    late var map = doc.data() as Map<String, dynamic>;

    map['id'] = doc.id;
    if (map['photoUrl'] != null)
      map['photoUrl'] = await getStorageDataUrl(map['photoUrl']);
    if (map['date'] != null) map['date'] = (map['date'] as Timestamp).toDate();

    return _ExampleFirebaseModel.fromMap(map);
  }
}
