import 'dart:convert';

import 'package:http/http.dart';


import '../ModelClass/chatgpt.dart';
import 'api_client.dart';

class AnimeApi {
  ApiClient apiClient = ApiClient();

  Future<Chatgpt> getAnime(String text) async {
    String trendingpath = 'https://chatgpt-gpt4-ai-chatbot.p.rapidapi.com/ask';
    var body =  {
      "query": text
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', body);

    return Chatgpt.fromJson(jsonDecode(response.body));
  }
}