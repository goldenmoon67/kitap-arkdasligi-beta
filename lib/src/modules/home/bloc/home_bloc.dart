import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/utils/logger/error_logger.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      on<StartEvent>(_start);
    });
  }
  Future<FutureOr<void>> _start(
      StartEvent event, Emitter<HomeState> emit) async {
    try {
      emit(HomeInitial());
      debugPrint("saşldsaşlda");
      String? fcmToken = await FirebaseMessaging.instance.getToken();
      if (fcmToken == null) {}

      debugPrint(fcmToken);
    } catch (error, stack) {
      ErrorLogger.logError(error, stack);
    }
  }
}
