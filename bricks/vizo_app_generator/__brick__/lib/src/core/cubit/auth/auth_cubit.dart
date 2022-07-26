import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/domain.dart';
import '../../service/service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required StorageService storageService,
  })  : _storageService = storageService,
        super(const AuthInitial());

  final StorageService _storageService;

  UserModel? get loggedUser => state.loggedUser;

  Future<void> checkAuthStatus() async {
    final user = _storageService.getUser();
    if (user != null) {
      emit(
        AuthUserLoggedIn(user),
      );
    } else {
      emit(
        const AuthUserLoggedOut(),
      );
    }
  }
}
