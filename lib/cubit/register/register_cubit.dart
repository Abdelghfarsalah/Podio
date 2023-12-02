import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
 
  void register({
    required String uid,
    required String email,
    required String password,
    required String phone,
    required String birthData,
    required String nationality,
    required String name,
  }) async {
    emit(RegisterSuccess());
    
  }
}
