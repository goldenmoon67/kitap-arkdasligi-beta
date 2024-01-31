part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

class StartEvent extends ProfileEvent {}

class ReadBookProfile extends ProfileEvent {
  final String bookId;

  ReadBookProfile({required this.bookId});
}
