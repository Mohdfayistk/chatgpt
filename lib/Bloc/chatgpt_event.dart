part of 'chatgpt_bloc.dart';

@immutable
abstract class ChatgptEvent {}
class FetchChatgpt extends ChatgptEvent {
  final String text;
  FetchChatgpt({required this.text});
}