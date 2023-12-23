import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'register_mail_event.dart';
part 'register_mail_state.dart';

class RegisterMailBloc extends Bloc<RegisterMailEvent, RegisterMailState> {
  RegisterMailBloc() : super(RegisterMailInitial()) {
    on<RegisterMailEvent>((event, emit) {
      on<StartEvent>(_start);
    });
  }

  FutureOr<void> _start(StartEvent event, Emitter<RegisterMailState> emit) {
    debugPrint("1233333333333333333333aaaaaaaaaaaaaaaaaaaaaaaaaa");
    debugPrint("sdasadddddddddddddddddddd444444444444");
    debugPrint("1233333333333333333333aaaaaaaaaaaaaaaaadaaaaaaaaa");
    debugPrint("sdasadddddddddddddddddddd444a444444444");
  }
}
