part of 'advs_bloc.dart';

@immutable
sealed class AdvsState {}

final class AdvsInitial extends AdvsState {}

final class AdvsLoading extends AdvsState {}

final class AdvsDetailData extends AdvsState {
  final AdvsDetail advs;

  AdvsDetailData({required this.advs});
}
