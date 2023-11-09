import 'dart:convert';

import 'package:http/http.dart';


import '../ModelClass/chatgpt.dart';
import 'api_client.dart';

class AnimeApi {
  ApiClient apiClient = ApiClient();

  Future<Chatgpt> getAnime(String text) async {
    String trendingpath = 'https://ai-chatbot.p.rapidapi.com/chat/free?message=$text&uid=user1';
    var body = {
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Chatgpt.fromJson(jsonDecode(response.body));
  }
}