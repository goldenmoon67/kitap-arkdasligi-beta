part of 'register_mail_bloc.dart';

@immutable
sealed class RegisterMailEvent {}

final class StartEvent extends RegisterMailEvent {}
