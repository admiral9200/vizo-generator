part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState(this.loggedUser);

  final UserModel? loggedUser;

  @override
  List<Object?> get props => [
        loggedUser,
      ];
}

class AuthInitial extends AuthState {
  const AuthInitial() : super(null);
}

class AuthUserLoggedIn extends AuthState {
  const AuthUserLoggedIn(UserModel user) : super(user);
}

class AuthUserLoggedOut extends AuthState {
  const AuthUserLoggedOut() : super(null);
}
