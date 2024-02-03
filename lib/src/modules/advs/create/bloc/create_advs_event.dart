part of 'create_advs_bloc.dart';

@immutable
sealed class CreateAdvsEvent {}

class CreateAdvsStartEvent extends CreateAdvsEvent {}

class CreateAdvsActionEvent extends CreateAdvsEvent {
  final String description;
  final BookUserProfile book;

  CreateAdvsActionEvent({
    required this.book,
    required this.description,
  });
}
