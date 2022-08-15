import '../../models/models.dart';

abstract class UserRepository {
  Future<UserModel?> fetchUserById(String id);
  Future<UserModel> addUser(UserModel user);
  Future<UserModel> updateUser(UserModel user);
  Future<bool> updateUserBlockedStatus(UserModel user,
      {bool shouldLogOut = true});
  void logout();
}
