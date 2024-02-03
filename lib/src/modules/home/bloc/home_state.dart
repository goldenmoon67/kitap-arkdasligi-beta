part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeStartData extends HomeState {
  final PagingModel<BookUserProfile> books;
  final PagingModel<AdvsBasic> advs;

  HomeStartData({
    required this.books,
    required this.advs,
  });
}
