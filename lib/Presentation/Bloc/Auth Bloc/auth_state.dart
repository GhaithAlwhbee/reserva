part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

final class AuthInitial extends AuthState {}

class AuthSuccessState extends AuthState {
  // AuthSuccessState({required this.authEntity});

  // AuthEntity authEntity;
}


class AuthErrorState extends AuthState {
  AuthErrorState({required this.message});

  String message;

  @override
  List<Object?> get props => [message];
}

class AuthNotLoggedState extends AuthState {}

class AuthLoadingState extends AuthState {}
