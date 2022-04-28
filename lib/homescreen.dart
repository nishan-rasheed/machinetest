import 'package:flutter/material.dart';
import 'package:mtext/chattile.dart';
import 'package:mtext/model/chatmodel.dart';
import 'package:mtext/profile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<ChatList> chats=[
    ChatList(
      dp: "assets/images/profile1.jpg",
      title: "Ostap Gorin",
      subtitle: "in this video ,iam demonstratingbhghgfgffdfxdxdxd",
      time: "10.04 am"
    ),
     ChatList(
      dp: "assets/images/profile2.png",
      title: "Oleg Umansky",
      subtitle: "hello how are you",
      time: "4.23 am"
    ),
     ChatList(
      dp: "assets/images/profile3.jpg",
      title: "good eveninf vgbhbvhbh",
      subtitle: "ggff",
      time: "4.23 am"
    ),
     ChatList(
      dp: "assets/images/profile4.jpg",
      title: "Monobank",
      subtitle: "hello everyone",
      time: "11.50 am"
    ),
     ChatList(
      dp: "assets/images/bookmark.png",
      title: "Saved Messages",
      subtitle: "this are saved messages",
      time: "12.05 am"
    ),
     ChatList(
      dp: "assets/images/profile6.jpg",
      title: "Ux foxes",
      subtitle: "good morning",
      time: "9.00 am"
    ),
     ChatList(
      dp: "assets/images/profile7.webp",
      title: "New year arty",
      subtitle: "good eveninf",
      time: "5.45 am"
    ),
     ChatList(
      dp: "assets/images/profile8.png",
      title: "last person",
      subtitle: "hgfddfdcgv ",
      time: "9.45 am"
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Chats"),
        leading: const Padding(
          padding:  EdgeInsets.only(top: 15.0),
          child: Text("Edit",
          style: TextStyle(
            fontSize: 20.0
          ),
          ),
        ),
        actions: const[
          Icon(Icons.note_alt_sharp),
        ],

      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatTile(data: chats[index],);
        },
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
               IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return ProfileScrren();
                },),);
              }, icon:Icon(Icons.account_circle),),
               IconButton(
              onPressed: (){}, icon:Icon(Icons.call),),
               IconButton(
              onPressed: (){}, icon:Icon(Icons.messenger),),
               IconButton(
              onPressed: (){}, icon:Icon(Icons.payments_rounded),),
               IconButton(
              onPressed: (){}, icon:Icon(Icons.punch_clock_outlined),),
          ],
        ),
      ),
    );
  }
}