import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/domain/managers/user_manager.dart';
import 'package:kitap_arkadasligi/src/utils/di/getit_register.dart';
import 'package:kitap_arkadasligi/src/utils/logger/error_logger.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  UserManager userManager = getIt<UserManager>();

  HomeBloc() : super(HomeInitial()) {
    on<StartEvent>(_start);
  }
  Future<FutureOr<void>> _start(
      StartEvent event, Emitter<HomeState> emit) async {
    try {
      emit(HomeInitial());

      var userId = userManager.userId;
      debugPrint("deneme");

      debugPrint(userId);
      debugPrint("sonuç");
    } catch (error, stack) {
      ErrorLogger.logError(error, stack);
    }
  }
}
