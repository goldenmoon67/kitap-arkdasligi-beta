part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeStartData extends HomeState {
  final PagingModel<BookUserProfile> books;

  HomeStartData({required this.books});
}
