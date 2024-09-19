part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  LoginEvent({
    required this.medicalRecord,
    required this.systemCode,
    required this.value,
  });

  String medicalRecord;
  String systemCode;
  String value;
}

class GetMyProfileEvent extends AuthEvent {}

class SendFcmTokenEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}

class CheckTokenEvent extends AuthEvent {}
