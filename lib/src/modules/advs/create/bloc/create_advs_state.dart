part of 'create_advs_bloc.dart';

@immutable
sealed class CreateAdvsState {}

final class CreateAdvsInitial extends CreateAdvsState {}

final class CreateAdvsLoading extends CreateAdvsState {}

final class CreateAdvsStartData extends CreateAdvsState {
  final PagingModel<BookUserProfile> booksFeature;

  CreateAdvsStartData(this.booksFeature);
}

final class CreatedAdvsSuccesfully extends CreateAdvsState {
  final String advsId;

  CreatedAdvsSuccesfully(this.advsId);
}
