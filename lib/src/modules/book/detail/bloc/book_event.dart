part of 'book_bloc.dart';

@immutable
sealed class BookEvent {}

class BookStartEvent extends BookEvent {}

class ReadBookEvent extends BookEvent {
  final String bookId;

  ReadBookEvent({required this.bookId});
}

class RemoveReadBookEvent extends BookEvent {
  final String bookId;

  RemoveReadBookEvent({required this.bookId});
}
