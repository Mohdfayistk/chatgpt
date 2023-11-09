import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/ModelClass/chatgpt.dart';
import '../Repository/ModelClass/chatgpt.dart';

part 'chatgpt_event.dart';
part 'chatgpt_state.dart';

class ChatgptBloc extends Bloc<ChatgptEvent, ChatgptState> {
  late Chatgpt gpt;
  Chatgpt animeApi = Chatgpt();

  ChatgptBloc() : super(ChatgptInitial()) {
    on<ChatgptEvent>((event, emit) async  {
      emit(ChatgptLoading());
      try {
        gpt = await animeApi.();
        emit(ChatgptLoaded());
      } catch (e) {
        print(e);
        emit(ChatgptError());
    }});
  }
}
