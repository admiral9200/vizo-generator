import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

abstract class FirebaseRepository {
  @protected
  CollectionReference get collection;

  @protected
  FirebaseFirestore get firebaseFirestore;
  @protected
  FirebaseCrashlytics get crashlytics;
  @protected
  FirebaseStorage get firebaseStorage;

  /// Last document on the request, useful for pagination
  // DocumentSnapshot? _lastDoc;

  /// Example of query inside of Repository
  // Future<List<Model>> _doRequest(Query query, {bool saveLastDoc = true}) async {
  //   try {
  //     List<Model> list = [];
  //     final response = await query.get();
  //     if (response.docs.isEmpty) return list;
  //
  //     list = await Future.wait(
  //         response.docs.map((e) => Model.fromFireStore(e)).toList());
  //
  //     list.sort((a, b) => a.name.compareTo(b.name));
  //
  //     if (saveLastDoc) _lastDoc = response.docs[response.size - 1];
  //     return list;
  //   } catch (e, s) {
  //     final String message = 'Failed to fetch councilors: $e';
  //     log(message, error: e, stackTrace: s);
  //     crashlytics.recordError(e, s);
  //     throw Exception(message);
  //   }
  // }
}

