// To parse this JSON data, do
//
//     final chatList = chatListFromJson(jsonString);

import 'dart:convert';

ChatList chatListFromJson(String str) => ChatList.fromJson(json.decode(str));

String chatListToJson(ChatList data) => json.encode(data.toJson());

class ChatList {
    ChatList({
        this.dp,
        this.title,
        this.subtitle,
        this.time,
    });

    String? dp;
    String? title;
    String? subtitle;
    String? time;

    factory ChatList.fromJson(Map<String, dynamic> json) => ChatList(
        dp: json["dp"],
        title: json["title"],
        subtitle: json["subtitle"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "dp": dp,
        "title": title,
        "subtitle": subtitle,
        "time": time,
    };
}
