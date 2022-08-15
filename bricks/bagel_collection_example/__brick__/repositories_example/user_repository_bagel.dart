import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../bagel.dart';
import 'user_repository.dart';

class UserRepositoryBagel implements UserRepository {
  UserRepositoryBagel(this._bagel);

  final BagelDB _bagel;

  BagelDBRequest get collection =>
      _bagel.collection(DBCollections.users).everything();

  @override
  Future<UserModel?> fetchUserById(String id) async {
    try {
      final response = await collection.query('_id', '=', id).get();
      if (response.data.isNotEmpty && response.itemCount! > 0) {
        final data = (response.data as List)[0];
        return UserModel.fromMap(data);
      }
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<UserModel> addUser(UserModel user) async {
    try {
      final response = await collection.item(user.id ?? '').set(user.toMap());
      if (response.data != null) {
        return user.copyWith(
          id: response.data['id'],
        );
      }
      return user; // nullable?
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<UserModel> updateUser(UserModel user) async {
    try {
      assert(user.id != null, 'UserModel.id can Not be null');

      await collection.item(user.id!).put(user.toMap());
      return user;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<bool> updateUserBlockedStatus(UserModel user,
      {bool shouldLogOut = true}) async {
    try {
      assert(user.id != null, 'UserModel.id can Not be null');

      final response = await collection.item(user.id!).put({
        'blocked': user.blocked,
      });

      if (shouldLogOut && user.blocked) {
        logout();
      }
      return response.statusCode == 200;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  @override
  Future<void> logout() async {
    try {
      _bagel.users().logout();
      // TODO: clear use in [SessionStore]
    } catch (e) {
      debugPrint(e.toString());
    }
  }

// @override
// Future<int> fetchSpotSeekersNearby(
//     LocationModel currentPosition, double searchRadius) async {
//   try {
//     final response = await collection
//         .query(
//             '_lastUpdatedDate',
//             '>',
//             (DateTime.now()
//                         .toUtc()
//                         .subtract(const Duration(hours: 1))
//                         .millisecondsSinceEpoch /
//                     1000)
//                 .floor())
//         .query(
//           'lastKnownPosition',
//           BagelDB.WITHIN,
//           BagelDB.GeoPointQuery(
//             currentPosition.lat,
//             currentPosition.lng,
//             searchRadius,
//           ),
//         )
//         .everything()
//         .get();
//
//     /// Remember to remove user itself
//     final data = response.data as List;
//     return data.isNotEmpty ? data.length - 1 : 0;
//   } catch (e) {
//     debugPrint(e.toString());
//     return 0;
//   }
// }
}
