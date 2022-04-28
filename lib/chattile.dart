import 'package:flutter/material.dart';
import 'package:mtext/chatsingle.dart';
import 'package:mtext/model/chatmodel.dart';

class ChatTile extends StatelessWidget {
   ChatTile({Key? key,required this.data}) : super(key: key);

ChatList data;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return ChatSingle();
        },));
      },
      leading: CircleAvatar(
        backgroundImage:AssetImage(data.dp.toString()),
      ),
      title: Text(data.title.toString()),
      subtitle: Text(data.subtitle.toString()),
      trailing: Text(data.time.toString()),

    );
  }
}