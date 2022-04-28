import 'package:flutter/material.dart';
import 'package:mtext/chatinfo.dart';
import 'package:mtext/model/messagemodel.dart';

class ChatSingle extends StatelessWidget {
  ChatSingle({Key? key}) : super(key: key);

List<Messages> texts=[
Messages(
isSend: false,
message: "the",
sendAt: "text",
),
Messages(
isSend: false,
message: "okay",
sendAt: "text",
),
Messages(
isSend: true,
message: "text",
sendAt: "text",
),
Messages(
isSend: true,
message: "assets/images/chat2.jpg",
sendAt: "text",
),
Messages(
isSend: true,
message: "hi there",
sendAt: "text",
),
Messages(
isSend: true,
message: "hello",
sendAt: "text",
),
Messages(
isSend: false,
message: "ok",
sendAt: "text",
),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chats"),
      ),
      // body: Container(
      //   child: Align(
      //     alignment: Alignment.bottomCenter,
      //     child: Container(
      //       width: MediaQuery.of(context).size.width-10.0,
      //       child:Card( 
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20.0)
      //       ),
      //       child:  TextField(
      //         decoration: InputDecoration(
      //          prefixIcon: Row(
      //            children: const[
      //              Icon(Icons.image),
      //              SizedBox(width: 15.0,),
      //              Icon(Icons.emoji_emotions)
                   
      //            ],
      //          ),
      //         //  hintText: "type your message",
      //          suffixIcon: Icon(Icons.send)
      //         ),
      //       ),
      //     ),
      //     ),
      //   ),
      // ),
      // body: Column(children: [
      //   ListBody(
      //     l
      //   ),
      //   Align(
      //     alignment: Alignment.bottomCenter,
      //     child: Container(
      //                 color: Colors.red,
      //       // alignment: Alignment.bottomCenter,
      //       child: TextField(
      //           decoration: InputDecoration(
      //            prefixIcon: Row(
      //              children: const[
      //                Icon(Icons.image),
      //                SizedBox(width: 15.0,),
      //                Icon(Icons.emoji_emotions)
                     
      //              ],
      //            ),
      //           //  hintText: "type your message",
      //            suffixIcon: Icon(Icons.send)
      //           ),
      //         ),
      //     ),
      //   )
      // ]),
      body: Container(
        
        
        child: Stack(
          children:[
            

             ListView.builder(
            itemCount: texts.length,
            itemBuilder: (BuildContext context, int index) {
              return ChatBubble(data: texts[index],) ;
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              child:  TextField(
              decoration: InputDecoration(
               prefixIcon: Row(
                 children: const[
                   Icon(Icons.image),
                   SizedBox(width: 15.0,),
                   Icon(Icons.emoji_emotions)
                   
                 ],
               ),
              //  hintText: "type your message",
               suffixIcon: Icon(Icons.send)
              ),
            ),
              // color: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
          )
          ]
        ),
      ),
    );
  }
}