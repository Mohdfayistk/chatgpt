class Chatgpt {
  Chatgpt({
      this.conversationId, 
      this.response,});

  Chatgpt.fromJson(dynamic json) {
    conversationId = json['conversationId'];
    response = json['response'];
  }
  String? conversationId;
  String? response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['conversationId'] = conversationId;
    map['response'] = response;
    return map;
  }



}