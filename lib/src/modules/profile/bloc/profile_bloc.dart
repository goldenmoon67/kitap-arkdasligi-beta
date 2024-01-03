import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/user.dart';
import 'package:kitap_arkadasligi/src/domain/repositories/user/user_repository.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';
import 'package:kitap_arkadasligi/src/utils/logger/error_logger.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  UserRepository userRepository = getIt<UserRepository>();

  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileEvent>(_start);
  }

  Future<FutureOr<void>> _start(
      ProfileEvent event, Emitter<ProfileState> emit) async {
    try {
      emit(ProfileLoading());
      User user = await userRepository.sessionUser();

      emit(ProfileStartData(user: user));
    } catch (error, stack) {
      ErrorLogger.logError(error, stack);
    }
  }
}
