import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/Api/api.dart';
import '../Repository/ModelClass/chatgpt.dart';


part 'chatgpt_event.dart';
part 'chatgpt_state.dart';
class ChatgptBloc extends Bloc<ChatgptEvent, ChatgptState> {
  late Chatgpt animeModel;
  AnimeApi animeApi=AnimeApi();
  ChatgptBloc() : super(ChatgptInitial()) {
    on<FetchChatgpt>((event, emit) async {
      emit(ChatgptLoading());
      try{

        animeModel = await animeApi.getAnime(event.text);
        emit(ChatgptLoaded());
      } catch(e){
        print(e);
        emit(ChatgptError());}
    });
  }
}
