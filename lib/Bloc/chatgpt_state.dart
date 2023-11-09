part of 'chatgpt_bloc.dart';

@immutable
abstract class ChatgptState {}

class ChatgptInitial extends ChatgptState {}
class ChatgptLoading extends  ChatgptState {}
class ChatgptLoaded extends  ChatgptState {}
class ChatgptError extends  ChatgptState{}