import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/login_create_model.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/auth/auth_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthRepository authRepository = getIt<AuthRepository>();
  LoginBloc() : super(LoginInitial()) {
    on<LoginActionEvent>(_login);
  }

  Future<FutureOr<void>> _login(
      LoginActionEvent event, Emitter<LoginState> emit) async {
    try {
      await authRepository.login(
          LoginCreateModel(email: event.email, password: event.password));
      emit(LoginSucces());
    } catch (error) {
      emit(LoginError(error: error.toString()));
    }
  }
}
