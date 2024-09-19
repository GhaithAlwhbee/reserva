import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is LoginEvent) {
        emit(AuthLoadingState());
        
      } else if (event is CheckTokenEvent) {
        emit(AuthNotLoggedState());
      } else if (event is LogoutEvent) {
        emit(AuthLoadingState());
        
      } else if (event is GetMyProfileEvent) {
        emit(AuthLoadingState());
        
      } else if (event is SendFcmTokenEvent) {
        emit(AuthLoadingState());
        
      }
    });
  }
}
