import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/detail/advs_detail.dart';

part 'advs_event.dart';
part 'advs_state.dart';

class AdvsBloc extends Bloc<AdvsEvent, AdvsState> {
  final String advsId;
  // AdvsRepository bookRepository = getIt<AdvsRepository>();

  AdvsBloc(this.advsId) : super(AdvsInitial()) {
    on<AdvsStartEvent>(_start);
  }

  Future<FutureOr<void>> _start(
      AdvsStartEvent event, Emitter<AdvsState> emit) async {
    emit(AdvsLoading());
    //var result = await bookRepository.bookDetail(bookId);
    // emit(AdvsDetailData(book: result));
  }
}
