import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
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
      User user = await userRepository.sessionUser();
      debugPrint("deneme");

      debugPrint(user.nickName);
      debugPrint("sonuç");
    } catch (error, stack) {
      ErrorLogger.logError(error, stack);
    }
  }
}
