import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/create/login_create_model.dart';
import 'package:kitap_arkadasligi/src/data/model/auth/login/response/login_response.dart';
import 'package:kitap_arkadasligi/src/data/model/oauth/oauth_token.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/auth/auth_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

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
      var response = await authRepository.login(
          LoginCreateModel(email: event.email, password: event.password));

      await _signIn(response);
      emit(LoginSucces());
    } catch (error) {
      emit(LoginError(error: error.toString()));
    }
  }

  Future _signIn(LoginResponse response) async {
    String userId = response.userId;

    final oAuthToken = OAuthToken(
      refreshToken: response.refreshToken,
      accessToken: response.accessToken,
      userId: response.userId,
      expiration: DateTime.now().add(
        Duration(
          seconds: response.expiresIn,
        ),
      ),
    );

    await FirebaseAnalytics.instance.setUserId(id: userId);
    await FirebaseCrashlytics.instance.setUserIdentifier(userId);

    await authRepository.saveOAuthToken(oAuthToken, saveFcmToken: true);
  }
}
