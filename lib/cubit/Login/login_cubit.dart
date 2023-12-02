import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  void login({required String email, required String password}) async {
    emit(loginSuccess());
    
  }
}
