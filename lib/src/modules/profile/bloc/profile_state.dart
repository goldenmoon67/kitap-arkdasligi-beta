part of 'profile_bloc.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileStartData extends ProfileState {
  final User user;

  ProfileStartData({required this.user});
}
