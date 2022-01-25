import '../../domain/domain.dart';

abstract class StorageService {
  UserModel? getUser();
  Future<void> setUser(UserModel? user);
}
